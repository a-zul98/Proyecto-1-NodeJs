/*const express = require("express");
console.log ("puto")

const mysql = require("mysql2");
console.log("conetadoamysql")

const conexion = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "tuPassword",
    database: "inventario"
});
console.log("createconnection")

const app = express();
 console.log ("puta")
app.get("/", (req, res) => {
    res.send("Hola");
    console.log ("holaaa");
});

app.listen(3000);*/

// 1. Importar librerías
const express = require("express");
 console.log("importo_express")

const fs = require("fs");

const script = fs.readFileSync("./sql/database.sql", "utf8");
console.log ("importo database.sql")
const inserts = fs.readFileSync("./sql/inserts.sql", "utf8");
console.log("importo inserts.sql")

const mysql = require("mysql2"); 
 console.log("importo mysql")


// 2. Crear la aplicación
const app = express();
 console.log("creo la app")


// 3. Permitir recibir JSON
app.use(express.json());
  console.log("permitio json")


// 4. Conectar a MySQL
const conexion = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "azulcapa",
    multipleStatements: true
});
 console.log("conecto a mysql")
////esto me dijo chatgpete

conexion.connect((err) => {

    if (err) {
        console.error(err);
        return;
    }
    console.log ("esta linea todo piola")

    console.log("Conectado a MySQL");

    conexion.query(script, (err) => {

        if (err) {
            console.log ("error en el conection query script")
            console.error(err);
            return;
        }

        console.log("Base y tablas creadas");

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





 /* esto me parece q esta mal
conexion.connect((err) => {
    if (err) {
        console.log("Error al conectar");
        return;
    }

    console.log("Conectado a MySQL");
});


conexion.query(inserts, (err) => {

    if (err) {
        console.log ("error en esta parte ni idea")
        console.error(err);
        return;
    }

    console.log("Datos insertados correctamente.");

});*/


app.listen(3000, () => {
console.log("Servidor iniciado en el puerto 3000");
});