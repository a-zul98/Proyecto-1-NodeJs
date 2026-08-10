
const express = require("express");
 console.log("importo_express")

const fs = require("fs");

const script = fs.readFileSync("./sql/database.sql", "utf8");
console.log ("importo database.sql")
const inserts = fs.readFileSync("./sql/inserts.sql", "utf8");
console.log("importo inserts.sql")


const mysql = require("mysql2"); 
 console.log("importo mysql")


const app = express();
 console.log("creo la app")


app.use(express.json());
  console.log("permitio json")


const conexion = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "azulcapa",
    multipleStatements: true
});
 console.log("conecto a mysql")


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


 pp.listen(3000, () => {
console.log("Servidor iniciado en el puerto 3000");
});
