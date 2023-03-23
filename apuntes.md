<!-- ---
layout: /Code/el-mundo-del-markup/layout.liquid
title: Apuntes de OrcaCL
description: la fuente de la juventud
--- -->

# Este es mi libro de anotaciones.

Acá voy a ir anotando las cosas que vaya aprendiendo durante el Bootcamp de Guillermo Rodas

## Markdown

Muy interesante he encontrado esto del Markdown pero más aún, el uso de WSL Ubuntu, y volver a juguetear con un terminal de linux.

Acabo de aprender a hacer aliases y entender además, por qué no me querían funcionar unos cuantos varios que traté de hacer andar y no pasaba ni un carajo.


## 05-03-2023

Acabo de tomar la decisión de que en este archivo voy a ir anotando todo, y posteriormente voy a ir ordenando los apuntes en sus respectivos archivos separados.

Así no me preocupo tanto del orden en un principio y después el limpiar me servirá para estudiar y repasar las cosas que voy aprendiendo. Además que puedo ir incorporando las cosas que descubro o busco por separado a lo que viene en los cursos del bootcamp.

Ahora seguiré poniendome al día con el video de S1C4

## 06-03-2023

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

**Bash**
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

## Git y Github

Master y Branches

Ya moví las cosas a su respectivo archivo. (git.md) en repo de markdown

<br>

# Semana 1 Clase 3 - Intro a HTML
Esta clase, algunas cosas nuevas. Una nueva extensión NPX que Guillermo usa para levantar un server y probar en vivo. VITE.

>npx vite dev

Inicialmente pedirá instalar paquetes, pero después tendremos un live server sin instalar una extensión de VS Code. (Como tengo ahora con liveserver)

(Tengo que repasar la diferencia entre Terminal, Shell y Prompt porque siena como las mismas weas pero parece que nou.)





## Semana 1 Clase 4 - Intro a CSS

¿Cómo se diferencia esto de la Logical Properties?
https://web.dev/learn/css/logical-properties/

## Especificidad

- Adyacente .primero + .segundo
- Hijo .padre > .hijo
- Descendiente .abuelo .bisnieto
- Hermano .hermano ~ .hermana

### Links Herramientas
[Juego para aprender CSS](laboratoria.github.com/css-diner/)
[Calculadora de Especificidad](https://polypane.app/css-specificity-calculator)
[Aprender Más CSS](cssreference.io)
https://www.youtube.com/watch?v=3GymExBkKjE  - Mouredev Curso de Git
 exceldraw.com

## Ejercicio Semana 1 Clase 4

Ver el tutorial de 4 minutos.
- Aplicar lo aprendido en el index.html
- 
Subir en git-profiles/caffa-asdsadsd


## Semana 1 Clase 5 AMA

HEAD es la posición donde estás parado con GIT.

Cuando haces un merge de una rama, se pega adelante. Eso se llama, Git Merge Fast Forward
 

# Apuntes 15-03-2023

## Semana 2 Clase 1: Intro A Javascript

**Primer encargo**
- Hacer al menos 2 revisiones de Pull-Request para ayudar a los demás amigos que están empezando el bootcamp.

### Valores Primitivos

|Tipo      | Ejemplo de valor   |
|-------   |------|
| Booleans | true o false|
| Numbers  | -100, 3,14 | 
| Strings  | "hola", 'condorito'|
| Symbols  | Symbol() |
| BigInts  | 10n, números muy grandes * | 
| Undefined| undefined |
| Null     | null |

* Al usar n con números super grandes hay que tener precaución de que puede comer memoria /recursos.

¿Cómo podemos evaluar el TIPO de variable es un VALOR?
> typeof valor;

¿Por qué typeof null es object?
Porque javascript es rarito.

 ### Objetos y Funciones

Una función es un objeto que podemos replicar. Y generalmente devuelve un resultado o valor que se puede ocupar o asignar a otra variable.

>typeof {} = 'object'
>typeof (x => x*2) = 'function'

"Todo en Javascript que no sea un **valor primitivo** es un **objeto**"

`Quiz: ¿Es Symbol("a") == Symbol("a")?`
- falso

El propósito de Symbol es de entregar un valor UNICO, independiente que se haya creado con "a" 2 veces. Son dos símbolos distintos, con un valor similar.

### Javascript y sus variables var, let y const
[Ver Video](https://www.youtube.com/watch?v=ojrvxYcKeYg) y follow up.

Recomendación, siempre usar CONST,
a menos que haya que re-asignar, usar LET

### Node 001 ----------------

Entrar a node
>node
Salir de node
>.exit  (con puntito)
-----------------------------

`Quiz: ¿Es 1 == '1' - Verdadero o Falso?`
- Falso
WHAT?! - Es true. O.o (Siempre y cuando usemos una comparación sólo de valores.)

`Coerción Fail`
En cambio, si usamos el comparador estricto, como 1=== '1' acá es falso, porque compara el tipo de variable y el valor de variable. El otro modo solo compara valores.

#### Falsy, Truthy y Nullish

**Falsy**
- false: booleano falso.
- 0
- -0
- 0n
- ''
- null
- NaN (NaN es number) NaN === NaN: falso (WHAT?)
- undefined

**Truthy**
- true
- 1
- "false" (un string no vacío)
- [] : arreglo vacío es verdadero.
- {} : objeto vacío es verdadero
- function (){}
- new Date()
- 42n

**Nullish**
- null
- undefined 

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

let variable = {};

if( typeof variable === "object" && variable !== null ){
    console.log('El valor es un objeto');
}

//Funciona!✨🚀🥳

### Retomando en 21-03-2023

## Objetos

>const = human {
>    name: 'Guillermo',
>    lastname: 'Rodas',
>    age: 32,
>}

console.log(human); // Imprime por consola de browser.

Dentro de una variable, hay propiedades. Que tiene las características del objeto.

### Operador punto . 
Llave.Atributo = valor;

Con punto se puede apuntar a una propiedad específica.
>console.log(objeto.propiedad);
>console.log(human.name);
-- 'Guillermo'


### Agregar propiedades

>human.caca = 'Verde';
>console.log(human); 

const = human {
    name: 'Guillermo',
    lastname: 'Rodas',
    age: 32,
    caca: 'Verde',
}

### Quitar propiedades

>delete human.age;
>console.log(human)

## Funciones Puras y Mutación en Javascript

`El código está compuesto por algoritmos están compuestos de 'statements/declaraciones', quienes están compuestas de expresiones`

### Function Statement / Declaración
function walk() {
    //
    console.log('Hola culiao');
}

Primero se declaran o definen, y para que se ejecute, se llama después.

>walk();

### Function Expression.

const walk = function () {
    console.log('Hola Expresión culia');
}

walk();

### Function Pura

No tienen efectos secundarios = Bo modifica cosas afuera de su scope
Es Determinista = 

function sumar(x,y) {
    return x + y;
}

sumar(1,2);

x e y sin valor, son parametros
1 y 2 ya son argumentos


### Importante

Cuando se copian variables o primarias, siempre se copian por valor.
Cuand se copian objetos, se copian por referencias de memoria, o sea, que afectan al objeto original si hago una modificación.

### Tablas de Verdad / Operadores Lógicos

**&&**  = Y // Encuentra el primer valor FALSO
**||** = O  //Encuentra el primer valor VERDADERO
 **!** = Not (Esto) = Invierte el valor de la consulta (Si NO)Esto

 ### Condicional con IF

let age = 2;

if (age >= 19) {
    console.log('Adulto'); 
} else {
  console.log('Babe');
} 

### Condicional Ternario

let mensaje = age >= 18 ? 'Adulto' : 'Joven';

## ¿Cómo haríamos una lista de frutas? ##

### Modo tradicional:

const fruits = {
    1: 'Banana',
    2: 'Manzana',
    3: 'Sandía'
}

### Modo Array:

>const tastyFruits = ['Banana','Naranja','Sandía];

>console.log (tastyFruits[2]);
// Sandía

## Modo Ciclos

//Para
// Si parte en CERO son INDICES.  Si parte en 1 son POSICIONES

for (let i = 0; i< 3; i++) {
    // Hace cositas
    console.log(i);
    console.log(tastyFruits[i]);
}


## El Alcance en Javascript / (Ambito o Scope)

let msg = 'Ola mundo';
let planet = 'mars';

function scope() {
    let msg = 'Hello World';
    let planet = 'earth';
    console.log(msg);

    if (msg) {
        let msg = 'Hola Mundo';
        console.log(msg + planet);
    }

    msg = 'Hej världen';
    console.log(msg);
}

// Recursos
Carlos Azaustre - Aprendiendo Javascript

https://carlosazaustre.es/libros/aprendiendo-javascript
https://exploringjs.com/impatient-js/
https://developer.mozilla.org/es/docs/Learn/JavaScript
https://es.javascript.info/


Ejercicio Semana 2 Clase 2:

¿Cómo puedo implementar una expresión para verificar si un valor es un array?

/* ANTERIOR
let variable = {};

if( typeof variable === "object" && variable !== null ){
    console.log('El valor es un objeto');
} */

`Usé un operador nuevo (Para mi, claro), que se llama **instanceof** para resolver este ejercicio`
Lo encontré en este lugar. Pensé que podría ser con isArray que creo que existía en PHP, pero no estaba. 
Acá habían un par de opciones pero sólo me funcionó instanceof, y apliqué el conocimiento para hacer la expresión.
(Fuente)[https://estradawebgroup.com/Post/Como-verificar-si-una-variable-es-un-array-en-JavaScript-con-el-metodo-isArray/20518]


const humano = ['Orlando', 'Caffarena', 40];
const arrayValido = humano instanceof Array ? console.log('Es Array') : console.log('No es array');

//Frontendtesting.com
//frontendtesting.org

//Midudev

//La solución de Guillermo, fue usando la propiedad de "largo" de un arreglo. 

Los Arrays tienen la propiedad de largo, mientras que los objetos no.

>let arr = ['verde','azul','caca'];
>arr.lenght // para ver la cantidad de elementos que tiene el array.
>typeof arr === 'object' && arr.lenght != null
>true

Y funciona, pero si al array le ingresamos el valor:
>let arr = { lenght: true }

la comprobación se fue al carajo.



# Semana 2, Clase 3: HTML Semántico










