## Semana 1 🚗🚗🚗🚗🚗

### Tabla de Comandos Iniciales de Bash que he aprendido.

| Nombre | Ejecución | Extra |
| ------ | ------ | ------ |
| alias | [alias nom='definicion'] | Para dejar un alias definitivo, debo abrir y guardar desde ~ el archivo `.bash_aliases` con NaNo. **importante Leer e1** |
| Mover o Renombrar | [mv archivo-origen archivo-destino / o mv nombre-antiguo nombre-nuevo] | Se usa el mismo comando para mover cosas o cambiarle nombre. |
| cambiar al home | cd (espacio) | Dejar el espacio provoca que bash automágicamente agregue ~ en la terminal |

### E1
Algo importante que recordar, es que si hago cambios al **.bash_aliases** debo cerrar la terminal y abrirla nuevamente, sino el dia del rey perico va a tomar los cambios.

### Abrir la carpeta que estoy revisando en Windows.
Si quiero ver en qué ruta estoy actualmente, puedo escribir el comando **explorer.exe .** con el punto al final. Y funciona. Salta un popup. El consejo fue de @RKT_Pantoja...

Hice la tabla de la tarea en mi archivo de apuntes, pero acá la escribo de nuevo, por si llego a subir esto y tenerlo de referencia también.

### Dibujar Tablas.

Se usa un pipe | para iniciar una celda. Así que para hacer una tabla, hay que usar | espacio |. Pero para que se dibuje correctamente la tabla y sea tabla, hay que incorporar como segunda fila, unas rayitas |-| segun la cantidad de celdas que tenga el encabezado de la tabla.

`NOTA: Para que se dibuje la tabla, hay que hacer si o si, la fila de las rayitas`  

| Nombre | Acción |
| ------ | -------|
| ls | Listar cosas del directorio actual |
| ls  -a -l | Listar cosas del directorio incluyendo las ocultas. Si se usa ? puedes ver más opciones de LS. ls -l muestra en formato detalles. |
| mv | Mover cosas o cambiarle el nombre, porque asignaciones de memoria y weas |
| pwd| Print Working Directory - Mostrar la carpeta donde estoy parado en el momento |
| cd -| Saltar al directorio donde estaba anteriormente |
|cat file.ext| Muestra el contenido de un file.ext|
|alias enter| muestra todos los alias disponibles|
|grep| filtro de texto |
|alias \| grep parametro | lista todos los alias y filtra con grep, lo que diga parametro |


Hay otras cosas que conocía porque la terminal CMDer cuando usaba Gulp, se me activó esa parte del cerebro y no hay necesidad de tener que anotar todas las weas de nuevo.+

**06-03-2023**

Si tengo echo "Blabla" > nombrefile.md me va a generar un archivo que incluya lo que puse dentro del echo.

Si uso cat puedo ver en consola lo que tiene un archivo dentro.

En algún momento del stream hablaron de @11ty o Eleventy. No alcancé a cachar que era y ahora llegué a esta parte.

Ya. Después que vi en vivo como la cagaba ya entendí.
Primero, **NPM o Node Package Manager** instala paquetes. Como globales (para usar) o como dependencias de lo que sea que esté escribiendo (una app, por ejemplo).

Por otro lado **NPX o Node Package Execute**, me permite descargar un paquete y ejecutarlo sin necesidad de instalarlo como global o dependencia. Es como para probar algo sin estar seguro si me sirve o no.

Y @11ty/eleventy es una herramienta para crear sitios HTML estáticos super fácil, que trae además un servidor local de archivos hml estáticos.

<pre>
> npx @11ty/eleventy -serve
</pre>

Este comando descarga el temporal, y convierte mis archivos base de Markdown en HTML, y los guarda en la carpeta por omisión, "_site".

Hay formas de ajustar parámetros, pero porongas. Eso lo veré después si es que lo necesito.

Si después repito el comando, me levanta el server en:

<pre>
> http://localhost:8080/
</pre>

Un detalle es que si hay más archivos en la carpeta, los va a convertir todos y dejar en subcarpetas separadas.  Si quiero que sólo convierta un archivo, es mejor especificarlo. Hay que usar el parámetro --input

<pre>
>npx @11ty/eleventy --input mark.md --serve
</pre>

"ls folder" lista el contenido del folder

**Domingo**

Acá hay otro listado de alias que Guillermo comparte:

Top 10 comandos más usados:

La línea tal cual Guillermo no me funcionó. Supongo que por la diferencia de teclados y uso de " o '.

La modifiqué un poco con ayuda de ChatGPT y quedó así.

<pre>
alias mostused="history | awk '{print \$2}' | sort | uniq -c | sort -nr | head -n 10"
   
</pre>

Estos son mis 10 comandos más utilizados:

| comando | descripcion |
|-|-|
| ls | listar el contenido |
| cd | cambiar de directorios |
| nano | editor de texto de consola |
| code | llamar a VS CODE |
| mimark | saltar con alias a el-mundo-del-markdown |
| exit | cerrar terminal |
| mostused | llamar al alias que arma esta lista |
| cl | limpiar consola |
| npx | ejecutar NPX |
| alias | listar los alias |

## Semana 2

