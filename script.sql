-- 1. Generar script para poblar todas las tablas
SQL

INSERT dbo.Productos (Producto, Nombre, Precio) values (1, "Cloro 1 litro", 23.5);
INSERT dbo.Productos (Producto, Nombre, Precio) values (2, "Jabon barrra", 19.5);
INSERT dbo.Productos (Producto, Nombre, Precio) values (3, "Cereal Zucaritas 900 gr", 45.9);

INSERT dbo.Cajeros (Cajero, NomApels) values (1, "Alan Romero Sanchez");
INSERT dbo.Cajeros (Cajero, NomApels) values (2, "Maria Jose Gimenez Ruiz");
INSERT dbo.Cajeros (Cajero, NomApels) values (3, "Luis Antonio Lopez Hernandez");

INSERT dbo.Maquinas_Registradoras (Maquina, Piso) values (1, 1);
INSERT dbo.Maquinas_Registradoras (Maquina, Piso) values (2, 2);
INSERT dbo.Maquinas_Registradoras (Maquina, Piso) values (3, 1);


INSERT dbo.Venta (Cajero, Maquina, Producto) values (1, 1, 1);
INSERT dbo.Venta (Cajero, Maquina, Producto) values (2, 2, 2);
INSERT dbo.Venta (Cajero, Maquina, Producto) values (3, 3, 1);

GO

-- CONSULTAS 
-- Mostrar el número de ventas de cada producto, ordenado de más a menos ventas
select productos.nombre, SUM (producto.precio*venta.producto) AS numventas from productos inner join venta on (productos.producto = venta.producto) order by numventas asc;

--Obtener un informe completo de ventas, indicando el nombre del cajero que realizo la venta, nombre y precios de los productos vendidos, y el piso en el que se encuentra la máquina registradora donde se realizó la venta.
select cajeros.cajero, productos.nombre, (producto.precio * venta.producto) AS pp maquinas_registradoras.piso from cajeros inner join venta on (productos.producto = venta.producto) inner join maquinas_registradoras.maquina = venta.maquina;

-- Obtener las ventas totales realizadas en cada piso
select m.maquinas_registradoras, v.venta, p.producto, SUM(producto.precio * venta.producto) AS vt from maquinas_registradoras p inner join venta v on m.maquina = v.maquina inner join productos p on p.producto = v. producto;

-- Obtener el código y nombre de cada cajero junto con el importe total de sus ventas
select cajeros.cajero, cajeros.nomApels, SUM(producto,ç.precio * venta.producto) AS vent, Count(vent) from cajeros inner join venta on (venta.cajero =cajeros=cajero) inner join productos on productos.producto = venta.producto;

-- Obtener el código y nombre de aquellos cajeros que hayan realizado ventas en pisos cuyas ventas totales sean inferiores a los 5000 pesos
select cajeros.cajero, cajeros.nomApels, maaquinas_registradoras.piso, SUM(producto.precio*venta.producto) AS ventotal from cajeros inner join venta on maquinas_registradoras.piso = venta.maquina inner join productos on productos.producto = venta.producto where ventotal < 5000;