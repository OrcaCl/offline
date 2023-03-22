### TAreas Libres Bootcamp

Inicial: 11-03-2023
Ultima actualización: 21-03-2023

Acá el listado de tareas pedidas, en proceso, sin solución y terminadas.

| Numero | Tipo | Encargo | Solución |
|-|-|-|-|
| S1C3| Markdown | Hacer un pequeño resumen tipo CV y guardarlo en MD. | **cv-orca.md** |
| S1C3 | Terminal | ¿Por qué mv (mover) se usa para renombrar archivos o carpetas? (editado) | Por lo que leí, estoy pasa porque son asignaciones de memoria las que se "mueven" del nombre original al nombre nuevo. |
| S1C3 | Markdown | Crear / Actualizar el Read.me de la cuenta Github | Se puede hacer copy and paste, pero me parece que en la siguiente clase (S1C4) se va a hablar sobre Git y GitHub. Por ahora tengo el archivo listo y preparado para cuando deba subirlo |

### Tareas Realizadas


|id Tarea | Tipo | Encargo Resumen  | Estado |
|-|-|-|-|
| Semana1-Clase1 | Markdown | Hacer readme.md para Github | Lista|
| Semana1-Clase1 | Markdown | Hacer una tabla con al menos 5 comandos de terminal en Markdown 1 Lista FP|
| Semana1-Clase2 | Git| Hacer un fork del repositorio del bootcamp, clonarlo a local, hacer perfil en markdown, y guardarlo dentro de "git-profiles", entre otras cosas. |
| Semana1-Clase3| Intro HTML | Hacer un archivo html a mano usando como referencia el archivo markdown con tu nombre de discord de Markdown. Guardarlo en una carpeta con tu nickname de discord en la misma ubicación que el ejercicio anterior. Y renombrar el archivo tunick.md a readme.md | Listo |
|Semana1-Clase4 | Intro CSS | Aplicar lo aprendido en un clip de webdesign al archivo index.html,  hacer commit y push| En proceso |
|-|-|-|-|
|Semana2-Clase1|Git|Hacer Code Review de al menos 2 perfiles o solicitudes de Pull-Review| Listo. Hice varios aunque algunos fueron más sugerencias que validación de errores.|
|Semana2-Clase1|Javascript|Hacer una declaración que permita verificar si un valor es objeto, considerando si la variable es null|Terminado. Hice un if() para probar esto. Se puede ver más abajo.|
|-|-|-|-|
|-|-|-|-|




# Desarrollos.

Los primeros desarrollos de Actividades no los voy a copiar acá, porque son cosas de git y github, que se pueden ver en los perfiles o discord. Voy a guardar acá ejercicios código que me sirvan para no olvidar cosas importantes.

#### S2C1

`CALENTAMIENTO`

let hugo = 15; // Era 0
let paco = 2 * hugo;
let luis = paco + 10;
let total = hugo + paco + luis;
/*if (total === 85) {
    console.log("Hugo: " + hugo);
    console.log("Paco: " + paco);
    console.log("Luis: " + luis);
}*/

if (total === 85) {
    console.log({hugo, paco, luis});
}

`EJERCICIO Semana 2 - Clase 1`

¿Cómo puedo implementar una expresión para verificar si un valor es un objeto? Ojo, null es un objeto, y por lo tanto, hay que descartar null.

Ejemplo: typeof obj === "object"

<pre>
let variable = {};

if( typeof variable === "object" && variable !== null ){
    console.log('El valor es un objeto');
}
</pre>
//Funciona!✨🚀🥳

#### S2C2

`EJERCICIO Semana 2 - Clase 2`

¿Cómo puedo implementar una expresión para verificar si un valor es un array?

<pre>
const humano = ['Orlando', 'Caffarena', 40];
const arrayValido = humano instanceof Array ? console.log('Es Array') : console.log('No es array');
</pre>
