## Entorno con herramientas para Análisis de datos

En este repositorio se encontrara una imágen de docker basada en Ubuntu 18.04, con herramientas de analísis de datos. Como base para ejemplificar la funcionalidad de la imágen, se incluye un ejemplo utilizando la base de datos publica para la pandemia de COVID-19. 

### Markdown

Las herramientas incluidas con esta imágen son:

-_CSVKIT:_ Es una herramienta de linea de commandos para trabajar con archivos en formato CSV.

-_PYTHON 3.8:_ Lenguaje de programación de propósito general, orientado a objetos, que también puede utilizarse para desarrollo web.

-_NUMPY:_ Biblioteca para el lenguaje de programación Python que da soporte para crear vectores y matrices grandes multidimensionales.

-_PANDAS:_ Biblioteca de software escrita como extensión de NumPy para manipulación y análisis de datos para el lenguaje de programación Python.


### Instalación

Se requiere instalar [Docker](https://www.docker.com/)

En la terminal escribir el commando: 
```markdown
//Ejecutar el commando para crear la imagen
docker build -t nombre_de_imagen .
```

Una vez que se genere el contendor, si se desea generar el contendor de la imagen 

```markdown
//Ejecutar el commando para crear el contenedor
docker run -it --name nombre_de_contenedor nombre_de_imagen
```

### Ejemplo de analisis a base de datos 

Se descargara automaticamente la base de datos sobre COVID 19 de la [pagina](https://www.gob.mx/salud/documentos/datos-abiertos-152127), tambien se van a generar tres archivos.

**-seleccion_total.csv:** contiene la base de datos depurada con los valores de mayor interes apra realizar un analisis

**-defunciones.csv:** contiene el segmento de defunciones de la base de datos original

**-resultado.txt:** contiene la tasa de mortalidad y el numero de dias promedio a partir de la presencia de sintomas para el deceso del paciente.


