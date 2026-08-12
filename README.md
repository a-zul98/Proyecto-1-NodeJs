##Proyecto-1-NodeJs##

1. **Ejecución de Proyecto**
   
  1.1 Clonar el repositorio:
   git clone https://github.com/a-zul98/Proyecto-1-NodeJs.git
   
1.2 Instalar dependencias:
   npm install
   
1.3 Ejecutar la aplicación.
  node app.js
 --> La inicialización de la base de datos se realiza automáticamente luego de ejecutar la aplicación.
 

3. **Cómo probar APIs con Postman**
  2.1. Esta aplicación está diseñada para realizar modificaciones en la tabla "productos".
   Ejemplo:
**PUT** http://localhost:3000/productos/CAF-101-002

Body:
{
    "nombre": "Cafe Colombia Finca Las Flores",
    "precio": 20.00,
    "stock": 25
}

**Historial de modificaciones**

Cada modificación realizada sobre un producto queda registrada automáticamente,
almacenando:

- Producto modificado
- Campo modificado
- Valor anterior
- Valor nuevo
- Fecha de modificación

  (FUNCION EN PROCESO)
**Reportes**

Este sistema permite generar un reporte en formato CSV a partir
del historial de modificaciones para luego exportarlo en formato de archivo de Excel.
