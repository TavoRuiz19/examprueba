{
	clientes: [
		{
			clienteID:1,
			Nombre_Usuario: "Juan145",
			Contraseña: "4848ZDR.8",
			Nombre:"Juan Pablo",
			Apellidos:"Perez Fernandez",
			Correo_Electronico: "JuanPe.74@gmail.com",
			Edad: 22,
			Estatura:1.79,
			Peso: 78.5,
			IMC:26,
			GEB:15,
			ETA:22,
			Fecha_Creacion:"2021-08-16T18:30:00Z",
			Fecha_Actualizacion:"2021-08-16T20:18:05Z"
		
		},
		{
			clienteID:2,
			Nombre_Usuario: "Junfer178",
			Contraseña: "Juanfer.875",
			Nombre:"Juan Fernando",
			Apellidos:"Izquierdoz Quinteros",
			Correo_Electronico: "JuanFer.Quin16@gmail.com",
			Edad: 25,
			Estatura:1.78,
			Peso: 77.5,
			IMC:26,
			GEB:12,
			ETA:29,
			Fecha_Creacion:"2021-08-17T19:50:00Z",
			Fecha_Actualizacion:"2021-08-18T17:22:05Z"
		
		},
		
	];
	const nombreUsuarioNoDuplicados = [];

	// Vamos iterando por clientes
	clientes.forEach(p => {
	  if(nombreUsuarioNoDuplicadas.findIndex(pd => pd.Nombre_Usuario === p.Nombre_Usuario) === -1) {
    	 	// No existe; al detectar que no existe el mismo nombre, "la copiamos"
		NombreUsuarioNoDuplicados.push(p);
  	}
	const correoNoDuplicados = [];

	// Vamos iterando por las personas
	clientes.forEach(p => {
	  if(corrreoNoDuplicadas.findIndex(pd => pd.Correo_Electronico === p.Correo_Electronico) === -1) {
	    // No existe; al detectar que no existe el mismo nombre, "la copiamos"
	    correoNoDuplicados.push(p);
  	}
});	
}