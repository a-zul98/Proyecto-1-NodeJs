
const express = require("express");
 console.log("importo_express")
const fs = require("fs");
const script = fs.readFileSync("./sql/database.sql", "utf8");
 console.log ("database.sql importado")
const inserts = fs.readFileSync("./sql/inserts.sql", "utf8");
 console.log("inserts.sql importado")
const mysql = require("mysql2"); 
const app = express();
 console.log("Servidor Creado")
app.use(express.json());
const conexion = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "azulcapa",
    database: "inventario",
    multipleStatements: true
});
 console.log("Conectado a Host")


function registrarCambio(productoId, campo, valorAnterior, valorNuevo) {

    const sql = `
        INSERT INTO historial
        (producto_id, campo_modificado, valor_anterior, valor_nuevo)
        VALUES (?, ?, ?, ?)
    `;

    conexion.query(
        sql,
        [productoId, campo, valorAnterior, valorNuevo],
        (err) => {

            if (err) {
                console.error("Error al registrar historial:");
                console.error(err);
                return;
            }
            console.log("Cambio registrado en historial");
        }
    );
}



app.put("/productos/:id", (req, res) => {

    const id = req.params.id;

    const { nombre, precio, stock } = req.body;

    const sqlBuscar = `
        SELECT *
        FROM productos
        WHERE id = ?
    `;

     conexion.query(sqlBuscar, [id], (err, resultados) => {

        if (err) {
            console.error("Error al buscar producto:", err);

            return res.status(500).json({
                mensaje: "Error al buscar el producto"
            });
     }

        if (resultados.length === 0) {

            return res.status(404).json({
                mensaje: "Producto no encontrado"
            });
        }

        const productoAnterior = resultados[0];

        const sqlActualizar = `
            UPDATE productos
            SET nombre = ?, precio = ?, stock = ?
            WHERE id = ?
        `;

        conexion.query(
            sqlActualizar,
            [nombre, precio, stock, id],
            (err) => {

                if (err) {
                    console.error("Error al actualizar producto:", err);

                    return res.status(500).json({
                        mensaje: "Error al modificar el producto"
                    });
                }

                if (productoAnterior.nombre != nombre) {

                    registrarCambio(
                        id,
                        "nombre",
                        productoAnterior.nombre,
                        nombre
                    );
                }

                if (productoAnterior.precio != precio) {

                    registrarCambio(
                        id,
                        "precio",
                        productoAnterior.precio,
                        precio
                    );
                }

                if (productoAnterior.stock != stock) {

                    registrarCambio(
                        id,
                        "stock",
                        productoAnterior.stock,
                        stock
                    );
                }

                res.json({
                    mensaje: "Producto modificado correctamente"
                });

            }
        );

    });

});


conexion.connect((err) => {

    if (err) {
        console.error(err);
        return;
    }

    console.log("Conectado a MySQL");

    conexion.query(script, (err) => {

        if (err) {
            console.log ("Error en el conection query script")
            console.error(err);
            return;
        }

        console.log("Base de datos y tablas creadas");

        conexion.query(inserts, (err) => {

            if (err) {
                console.log ("error en el connection query insert")
                console.error(err);
                conexion.end()
                console.log("cerro la conexion");
                return;
            }

            console.log("Datos insertados");


            app.listen(3000, () => {
                console.log("Servidor iniciado");
            });

        });

    });

});


app.listen(3000, () => {
console.log("Servidor iniciado en el puerto 3000");
});
