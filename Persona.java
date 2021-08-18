package modelo;


public class Persona {
	private String NSS = 145784;
	private String nombre;
	private String apellidos;
	private int edad;
	private double estatura;
	private double peso;
	const string sexo = "H"; 
	
	public Persona(String NSS, String nombre, String apellidos,int edad,double estatura,double peso, String sexo) {
		NSS= NSS;
		this.nombre= nombre;
		this.apellidos= apellidos;
		this.edad = edad
		this.estatura= estatura;
		this.peso = peso;
		this.sexo= sexo;

	}
	
	public String getNSS() {
		return NSS;
	}
	public void setNSS(String NSS) {
		this.NSS = NSS;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public int getEdad() {
		return Edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}

	public void esMayorDeEdad(int edad){
               bool mayor;
               if (edad >= 18){
                   mayor = true;
               }
               else{
                   mayor = false;
               }
               Console.WriteLine("Soy mayor?: "+mayor);
        }

	public double getEstatura() {
		return estatura;
	}
	
	public boolean setEstatura(double estatura) {
		boolean exito= false;
		
		if(estatura>0) {
			this.estatura = estatura;
			exito=true;
		}
		return exito;
	}
	
	public double getPeso() {
		return peso;
	}
	public boolean setPeso(double peso) {
		boolean exito= false;		
		if(peso>0) {
			this.peso = peso;
			exito=true;
		}
		return exito;

	}
	
	public String indiceMC(){
 		double imc = peso / (estatura * estatura);
 		if (imc < 18.5)
 			return "Bajo peso";
 		else if (imc <  25)
 			return "Normal";
 		else if (imc <  30)
 			return "Sobrepeso";
 		else return "Obesidad";
	}
	private void comprobarSexo(char sexo){
           if(sexo != 'H' || sexo != 'M'){
               sexo = 'H';
           }
           Console.WriteLine(sexo);
        }
	private static void generaNSS(){
               int NSS;
               int resultadoA;
               int resultadoB;
               int resultado;
               string[] letras = new string[23] {"T","R","W","A","G","M","Y","F","P","D","X","B","N","J","Z","S","Q","V","H","L","C","K","E"};
               Random r = new Random();
               NSS = r.Next(99999999);
               resultadoA = NSS / 23;
               resultadoB = resultadoA * 23;
               resultado = NSS - resultadoB;
               Console.WriteLine(NSS + "-" + letras[resultado]);
               
        }
	public String toString(){¨
		return NSS+" "+nombre+" "+apellidos+" "+edad+" "+estatura+" "+peso+" "+sexo; 
	
	}
	
	public static void main(String args[]){  
   		Persona p1=new Persona("1015848","Maria","Reyes Lopez",19, 1.75,"M");  
		Persona p2=new Persona("4874580","Gonzalo","Montiel Martinez",22, 1.80,"H");       
   		System.out.println(p1);  
 		System.out.println(p2); 
 	}  	

}

