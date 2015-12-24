//Se define el objeto
var chico=new Object();
//Los datos de las celdas se almacenan en un arreglo de arreglos. Cada arreglo
//de adentro representa una fila.
chico.data=[ [13,1,3,12,3], [9,6,12,3,10] ,[12,5,3,10,10] ,[3,9,6,10,10] ,[12,6,13,4,6]];
//Estos dos no es necesario moificarlos, ya que se calculan automáticamente.
chico.height=chico.data.length;
chico.width =chico.data[0].length;
//Inicio y final del laberinto. [fila,columna]
chico.start=[0,3];
chico.end=[3,0];
//Nombre del laberinto. Este será el texto que se mostrará en el Select de la
//página html. Sólo es necesario para el archivo de javascript.
chico.name="Chico";
