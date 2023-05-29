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

(Validator W3.org)[https://validator.w3.org/nu/]

## Tags Semánticos.

### Article
Un artículo de alguna cosa. Un detalle de información.

### Section 
Una sección o contenedor de secciones. Puede contener muchos <articles>
Es una sugerencia. Porque pueden haber artículos con muchas secciones internas.

Pueden tener un encabezado <h1></h1>

### Nav

Un menú idealmente que venga en un nav.
<nav>
    <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Blog</a></li>
        <li><a href="#">About</a></li>
    </ul>
</nav>

### Header
Puede ser de la página o de un artículo
La parte superior de la página. Puede contener la marca, el navegador, etc.


### Footer
Puede ser el footer del artículo o de la página
La parte inferior

(HTML Living Standard)[http://html.spec.whatwg.org/#the-document-object]

(MDB Web Docs)[https://developer.mozilla.org/en-US/docs/Web/HTML/Element/section]

### Aside

No tiene un valor semántico, más que comunicar que el contenido no está conectado con el resto.
Es para poner pops, anuncios o avisos entre los section o articles.
"Algo al lado, que no tiene que ver. Recomendaciones"

### Divs

Para que se usan los divs?. Para maquetar contenido. No entregan ningún significado semántico. Son `Invisibles`

### Time y Address

Sirve para encapsular una fecha y hora.

<p>Hola que tal, festival. <time datetime="2023-03-23 03:30"></time></p>

<address>
 Por favor contacte a: <a href="mailto:orlando.caffarena@gmail.com">PReguntar weas</a>
</address>

### Figure, figcaption, picture e img
Semánticamente, si una imagen o fotografía, tiene relación con el texto, debe ir dentro de figure. Sino es una img, que es algo de relleno, gráfico no más.


<figure>
    <img src="elemento.jpg" alt="Descripcion del elemento para ayudar a quienes no pueden ver la foto" />
    <figcaption>
        acá va la descripción de la fotografía, de forma visible.
    </figcaption>
</figure>

<picture></picture>

(HTML5Doctor)[https://html5doctor.com/element-index/#main-desc]

Investigar más sobre ARIA


# Semana 2 Clase 4
# Formularios HTML, JSON, DOM y CSSOM

## Formularios clásicos


    <form action='/server' method='get' class='form'>
    </form>

    Cliente--> www --->https request ---> http headers ----> Servidor
    ---->Servidor----->https response ---> http headers ----> html+css


>npx vite dev 
>serve .

Ambos hacen lo mismo.

## inputs 

¿Cómo validar un radio?
Se inicializa con un checked.
El Select, se pone required en select y no en option.


    http://localhost:5173/server?name=aaa&email=aa%40sdfsd&budget=5000&description=dddd&terms=on

**26-03-2023***************************************

## Estilos de formulario

Carmen Ansio
Seruda
Caro Jaramillo - El Poder de los Hábitos.



### Buttons

Los botones deben usar:

    cursor: pointer;

Cosas nuevas:

    text-shadow: -1px -1px 0 rgba(255,255,255,.6);
    box-shadow: 1px 1px 3px rgba(0,0,0,.5);

## Controles Modernos para Formularios

- **email**: Acepta una dirección de correo electrónico.

    \<input type="email" name="email">

- **url**: Acepta una URL

    \<input type="url" name="website">

- **-number**: Aceta números enteros o decimales. Puedes especificar adicioneales como min, max y step para restringir y controlar el rango de valores permitidos.

    \<input type="number" name="age" min="1" max="100">

- **range**: Acepta un rango de números y presenta un control deslizante en la interfaz de usuario. También permite atributos min, max y step.

    \<input type="range" name="volume" min="0" max="100">

- **date**: Acepta fecha y muestra un selector de fecha en la interfaz de usuario.

    \<input type="date" name="birthdate">

- **time**: Acepta una hora y muetra un selector de hora en la interfaz de usuario.

    \<input type="time" name="app_time">

- **datetime-local**: Acepta una fecha y hora y muestra un selector de fecha y hora en la interfaz de usuario.

    \<input type="datetime-local" name="meeting">

- **color**: Acepta un valor de color y muestra un selector de color de la interfaz de usuario.

    \<input type="color" name="fav_color">

- **search**: Acepta una cadena de búsqueda y puede mostrar sugerencias de busqueda en algunos navegadores.

    \<input type="search" name="query">

- **tel**: Acepta un número de teléfono aunque no realiza una validación específica del número. Se usa para mejorar la experiencia de usuario en mobile, mostrando el teclado numérico adecuado.

    \<input type="tel" name="phone">

<br>
<br>

# JSON

JSON (JavaScript Object Notation) es un formato de intercambio de datos ligero y usado en todas las tecnologías actuales de programación.

Los objetos JSON estanf formados por pares de clave-valor, donde las claves son siempre **strings** y los valores pueden ser **strings, números, objetos, arrays, true, false o null**.

    ¡¡Siempre usar COMILLAS DOBLES!!!

(Resumen inicial, porque se saltó la wea entera xD)

# DOM (Document Object Model)

Es una representación en forma de árbol de los elementos y estructura de una página web.

Es una interfaz de programación que permite a los desarrolladores interactuar y manipular el **contenido, la estructura y el estilo** de la página web utilizando JavaScript.

    document.createElement("div");
    document.createTextNode("Hello World");

    document.getElementById("id");
    document.getElementByClassName("class");

    document.querySelector("form");
    document.querySelectorAll"(".form-group");


# ¿Qué es el CSSOM?

El CSSOM (CSS Object Model) es una representación en forma de árbol de todos los estilos CSS asociados con una página web.

Al igual que el DOM, representa la estructura y el contenido de una página web, el CSSOM representa la información de estilo de la página.

    document.body.style.background = tomato;

https://css-tricks.com/an-introduction-and-guide-to-the-css-object-model-cssom/

https://lenguajejs.com/javascript/objetos/json/

Ver Slides por más.



## Calentamiento
Ir a https://codepen.io/pen/
En la  zona de html , escribir el siguiente control:

    <input type="datetime-local" name="meeting">

<hr>
<br>
<br>

## Ejercicio Semana 2 Clase 4
> Agregar un formulario de contacto, en un archivo externo en el perfil del ejercicio de semana-2


# Semana 3 - Clase 1 # 
> 28-03-2023

## FLEX ##

Es el sueño de todo papá. Que los hijos hagan caso xD

    display: flex
    display: inline-flex

Puede ser de ambos, pero solo 1.
Flex va a intentar meter dentro del contenedor todos los elementos, sin importar como se aplaste o estire la interfaz

|propiedad| función|
|-|-|
|flex-wrap: wrap| Si los elementos no caben dentro de la linea, flex los va a quebrar y meter en otra fila.|
|flex-wrap: nowrap| es lo opuesto a lo anterior|
|flex-direction: column| Altera la dirección hacia donde van los elementos. Columna para el lado, row para abajo|
|justify-content| Funciona en el EJE PRINCIPAL |
|justify-content: flex-end| Parte desde la derecha a la izquierda|
|justify-content + wrap| Permite que se ajusten al ancho del item, y lo hace stack hacia abajo|
|justify-content: space-between| rellena con un espacio entre los items para justificar el espacio disponible|
|justify-content| No se puede usar en elementos NOWRAP|
|justify-content: space-around| rellena con los espacios desde afuera hacia adentro|
|justify-content: space-evenly| rellena con espacios de igual tamaño |
|align-items| Es para el EJE CRUZADO |
|align-items: center | Alineado al centro del eje cruzado| 
|flex-direction| Si lo cambio, se invierten justify-content y align-items|
|align-content| Afecta a elementos multilinea|
|align-content:stretch| es el valor por omisión|

`Align-content puede tomar posesión de los elementos por sobre align-items, porque los agarra a todos como un grupo y no por los elementos individuales.`


**Links**

[CSSReference.io](https://cssreference.io)

## CSS GRID ##


- Grid = Retícula. / Cuadrícula
- Grid Line = Es una línea (la divisoria de los elementos.)
- Grid Track = Son las columnas o las filas
- Grid Area = Una zona o un conjunto adjascente de columnas y filas
- Grid Cell = es un cuadrito o una celda de la cuadrícula.

<br>

    IMPORTANTE: Si uno usa GRID, las celdas son de width y height AUTO!

<br>

No solo podemos asignarle valores a los Grid Tracks, usando grid-template-rows y grid-template-columns. Además podemos ponerles nombres:

    >grid-template-columns: 
    [first] 40px [line2] 50px [line3] auto [col4-start] 50px [five] 40px [end]

grid-template-columns: [first] 40px [line2] 50px [line3] auto [col4-start] 50px [five] 40px [end];
    

data-line-names="first line2 line3 col4-start five end"

|Propiedad| Función|
|---------|--------|
|grid-template-column|para asignar tamaños a las columnas de la plantilla base|
|grid-template-rows| para asignar valores / tamaños a las filas de la plantilla base|

Sigo mañana...

------*--------

Seguimos: 01-04-2023

**Ejercicio 1 Clase 1, Semana 3**

¿Cómo poner .item-a en esta posición?

| | | | | | | |
|-|-|-|-|-|-|-|
| |+|+|+|+|+| |
| |+|+|+|+|+| |
| |+|+|+|+|+| |
| |-|-|-|-|-| |
| | | | | | | |

Este ejercicio ya lo hicimos durante la clase.

Hay que establecer el grid template columns y grid-template-rows con nombres de lineas, y posteriormente, definir la ubicación de .item-a, usando grid-columns y grid-rows:

    .grid-item-1 {
        background-color: turquoise;
        grid-column: 2 / 3 ;
        grid-row: row1-end / third-line;
    }

    .grid-container {
        display: grid;
        grid-template-columns: [first] 40px [line2] 50px [line3] auto [col4-start] 50px [five] 40px [fin];
        
        grid-template-rows: [row1-start] 25% [row1-end] 100px  [third-line] auto [last-line];
        
        height: 100%;
        border: 2px dashed teal;
    }

Ya se me había olvidado. Pero bueno saberlo para no tener que repetirlo.


## Otras propiedades de Flex y Grid ##

### `Alinear Divs al centro-style` ###
Al usar grid, todo se ajusta más fácil.

    display: grid;
    place-items: center;


### `Panqueque desarmado` ###
Maqueta que se ajusta al ancho del contenedor, achicando o reubicando elementos según espacio disponible "mínimo, máximo e inicial".

    flex: 1 1 150px; /* Estirable cuánto va a crecer, cuánto se va a encoger, cuánto es lo inicial */
    flex: 0 1 150px; /* No estirable */
    margin: 5px; 


### `Sidebar Says` ###
Maqueta que se ajusta según el tamaño responsive de su sidebar.
En este caso, el Sidebar usa como tamaño minimo 150x, y como máximo el 25% de espacio disponible en relación al total. El resto, se absorbe como 1 fracción restante para el "main".

    .ex3 .parent {
        display: grid;
        grid-template-columns: minmax(150px, 25%) 1fr;
    }


### `Ver Más en: ` ###

[Layouts de 1 Linea](https://1linelayouts.glitch.me/)

Jugar con la ranita y el Grid garden, para practicar Flexbox y GRID.

[Ranita CSS](https://flexboxfroggy.com/#es)
[CSS Grid Garden](https://cssgridgarden.com/#es)

Ejercicio 2: Hacer una diagramación tipo Blog, siguiendo el ejemplo del codepen: https://codepen.io/glrodasz/pen/wvEXqLB

06-04-2023 - Blog listo en /Code/blog

# CSS Responsive #

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

Finalmente sabemos que el primer meta es una solicitud para que la compatibilidad con IE sea con la última versión, llamada `edge`pero que probablemente desaparezca en el futuro o no sea necesario su uso.

El otro meta, lo veremos más adelante. Se borra otra vez.

## Posicionamiento ##

|posición| descripcion|
|--------|------------|
| static | Sin posicionamiento. |
| relative | posicionamiento relativo al entorno, y empieza desde la esquina superior izquierda |
| absolute | posicionamiento absoluto según el contenedor posicionado PADRE **Ojo, si al contenedor de absolute, le pongo absolute, se levanta todo y "FLOTA" en Z-INDEX sobre los otros elementos**, que se ajustan y se suben |
| fixed | posición relativa al BODY siempre | 

## Design Layouts ##

Hay Flexible, Centrado, Fijo, y otro que no anoté :P

## Media Querys ## 

Algunos Breakpoints para 2023

// Small devices (landscape phones, 576px and up)
@media (min-width: 576px) { ... }

// Medium devices (tablets, 768px and up)
@media (min-width: 768px) { ... }

// Large devices (desktops, 992px and up)
@media (min-width: 992px) { ... }

// Extra large devices (large desktops, 1200px and up)
@media (min-width: 1200px) { ... }



@media (max-width: 575.98px) { ... }

// Small devices (landscape phones, less than 768px)
@media (max-width: 767.98px) { ... }

// Medium devices (tablets, less than 992px)
@media (max-width: 991.98px) { ... }

// Large devices (desktops, less than 1200px)
@media (max-width: 1199.98px) { ... }

Me lo salté porque no hizo mucho por ahora.

**09-04-2023**

Ahora volvió el query.

    @media screen (min-width: 992px) {
        //blabla
    } 

Otro importante que estaba en el tintero es:

## Deshabilitar el Zoom ##

    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0' />

Esta instrucción es para deshabilitar el zoom. 

## CSS Container Queries ##

En vez de hacer media queries al tamaño de la pantalla, se hacen al tamaño del CONTENEDOR.


## ¿Cómo hacer imágenes responsive? ##

Consideremos que hay retina display, así que las fotos van al doble que lo que requieres.

**SVG**: width: 100%, max-width

### Técnica 1: Imágenes de 2x con srset ###

**JPG, PNG**:

    <div class="illustration">
        <img src='illustration-small.png'
            srcset ='images/illustration-small.png 1x,
                    ='images/illustration-big.png x2'
            style='max-width: 500px' />
    </div>


### Técnica 2: Usar dirección de arte con 'Picture' ###

    <div class='photo'>
        <picture>
            <source media=' (min-width: 401px) '
                    srccset='images/photo-big.jpg' />
            <source media=' (max-width: 400px) '
                    srcset='images/photo-tall.jpg' />
            <img src='images/photo-small.jpg' />        
        </picture>
    </div>

**12-04-2023**

Semana 3, Clase 3: Estructuras Modernas

Me garché el repositorio de semana-2 pegando cosas de la semana 3, pero ya lo recuperé con git log, git reset HEAD, git pull.config rebase=false, git pull origin main, y chao.

Pero antes hay que copiar las cosas que modifiqué en una carpeta extra.  Los ejercicios de la Clase 3, Semana 3 quedaron en /offline/s3c3/

**IMPORTANTE**

En esta clase instalamos MAL veet (vite). La forma correcta es instalarlo en modo devDependency y no como dependencia de funcionamiento.



**13-04-2023**

# Semana 3, Clase 4: Frameworks de UI #

## ¿Qué es una biblioteca? / Library? ##

Son un conjunto de funciones, clases, módulos o componentes predefinidos que pueden ser reutilizados en múltiples proyectos.

Algunas Bibliotecas/librerias

- jQuery
- Lodash
- React.js
- y otras weas

### Gestión de Repositorios de paquetes ###

- Linux: Advance Package Tool = APT
- macOS: Homebrew
- Windows: Chocolatey, winget

`Como iniciamos el asunto de los paquetes??`

#### package.json ####

    >npm init -y

Este comando ejecuta la petición de iniciar un proyecto, armando un archivo package.json y con las opciones de configuración por omisión. Si quito la "-y" me va preguntando cada línea de la config por separado. (Ver package.json)


### Usando Frameworks en frameworks-ui ###

#### Bootstrap v5 ####
Instalando bootstrap para VITE. Seguimos los pasos.

Consultar después la diferencia entre:

    >npm install vite --save-dev
    y
    >npm add vite -D

Como hacer carpetas "fast" con linux:

    mkdir {src,src/js,src/scss}
    touch src/index.html src/js/main.js src/scss/styles.scss vite.config.js


Seguir los ejemplos y ya.

#### Tailwind CSS ####

iniciamos la carpeta con:

    npm init

Para tener un archivo package.json


Instalamos vite con:

    npm install -D vite

Esto para tener la posibilidad de tener un servidor de desarrollo funcionando.

Seguimos la instalación original como aparece en la web de Tailwind CSS

En la parte de los scripts de package.json, vamos a agregar unos scripts que inventó Guillermo:

    "dev:css": "tailwindcss -i ./src/input.css -o ./src/output.css --watch",
    "dev:src": "vite dev src",
    "dev": "concurrently \"npm run dev:css\" \"npm run dev:src\" ",


#### Concurrently ####

Y antes de seguir, hay que instalar una librería que Guillermo no menciona, pero es la que soluciona el error del script provocado por "concurrently". 

Acá la salvada del queridísimo [StackOverflow](https://stackoverflow.com/questions/30950032/how-can-i-run-multiple-npm-scripts-in-parallel#30950298)

    >npm i concurrently --save-dev

#### Instalación de Tailwind ####

    > npm install -D tailwindcss
    > npx tailwindcss init

Agregar la configuración de directorios a `tailwind.config.js`

    /** @type {import('tailwindcss').Config} */
    module.exports = {
      content: ["./src/**/*.{html,js}"],
      theme: {
        extend: {}, 
      },
      plugins: [],  
    }

Empezar a dibujar el archivo ahora con 

    >npm dev

Aborté Tailwind porque quiero enfocarme más en javascript.
Quizá lo pueda retomar después. Los ejercicios de la semana 3, clase 4 quedaron guardados en Code/frameworks-ui/tailwind-tarea

## Semana 4 ##

### Clase 1: Lodash y otras cosas ###

Lodash es una librería que posee funciones utilitarias en Javascript moderno que entrega modularidad, rendimiento y extras.

*Recordando*

#### Funciones Utilitarias ####

*Transformación*

    map([a,b,c], cook) 
    => [d,e,f]

La función map siempre retorna la misma cantidad de elementos que ingresamos para la consulta.

*Filtrar*

    filter([a,b,c], isVegetarian)
    => [a,c]

La función filtrar retorna los elementos que forman parte o corresponden a la función que se llama para compararlos.

*Reduce*

    reduce([a,b], eat)
    => p

La función reductora agarra los elementos y puede botar los resultados, según lo que haga 'eat' pero generalmente devuelve menos cosas de las que entran.

Weas extra a todas las funciones, arreglos, objetos, y mil cosas que le faltan (o faltaban) a Javascript.

Tomamos para el ejercicio, el index.js que existe en nuestra copia de undefined-academy/biblioteca-utilidades/
hacemos: npm init -y y solicitamos lodash.js como una dependencia.

En el archivo index.js estamos probando:
| Nombre   | Descripcion |
|----------|-------------|
| _.group  | Agrupa elementos según una condición dada |
| _.filter | Extrae elementos según una condición dada |
| _.map    | Crea un nuevo grupo de elementos, en caso de encontrar una coincidencia en la condición dada, retornando SOLO los valores de la condición consultada |
| _.orderBy| Ordena elementos de forma ascendente o descendente|
| _.reduce | Cuenta cantidad de existencias según una condición dada |
| _.merge | Pega sobre el elemento 1, el elemento 2|
| _.picked | Recoge los elementos según una condición dada |
| _.omit | Quita los elementos según una condición dada |
| _.has | Consulta si tiene algo, condición dada |
| _.mapValues | Consulta los datos dentro de un elemento de un objeto |

En algún momento mientras escribía las herramientas de Lodash, se incrustó este código en el "import _ from "lodash""

    >, { has } from

Al quitarlo, se va el error de :

    SyntaxError: Named export 'has' not found. The requested module 'lodash' is a CommonJS module, which may not support all module.exports as named exports.


## Semana 4 - Clase 2 ##

Fechas y revisión de la actividad anterior.

### Manejo de Fechas ###

Nuevas librerías para uso de Fechas con :
- new Date();
- Day.js
- Temporal API

*Solución del Ejercicio*

    const filtradasPorTag = _.filter(entries, function(entry) {
    return _.includes(entry.tags, "Desarrollo");
    });

    const agrupadasPorAutor = _.groupBy(filtradasPorTag, "autor");
    const mapeandoPorTitulos = _.mapValues(agrupadasPorAutor, function (entries){
    return _.map(entries, "titulo");
    });

    console.log(mapeandoPorTitulos);

    // Output

    // node index.js 
    // {
    //   'Juan Pérez': [ 'Introducción a HTML5', 'Cómo crear una página web desde cero' ],
    //   'Pedro González': [
    //     'Introducción a CSS3',
    //     'Cómo crear un diseño atractivo para una web'
    //   ],
    //   'Ana Rodríguez': [ 'Cómo optimizar el rendimiento de una web' ],
    //   'María García': [ 'Cómo usar jQuery en una web' ]
    // }

    */

### new Date() ###

Ver s4c2 en Code para los ejemplos de date();


### Day.js ###
import dayjs from "dayjs";
import utc from "dayjs/plugin/utc.js";

//Para cambiar idioma
import es from "dayjs/locale/es.js";

//Para tener fechas relativas (entre 2 tiempos)
import relativeTime from "dayjs/plugin/relativeTime.js";

dayjs.extend(utc);
dayjs.locale(es); // use loaded locale globally}
dayjs.extend(relativeTime);

const today = dayjs();

// console.log(today.format());
// const birthDay = dayjs("1990-05-10");
// console.log(birthDay.utc().format());

// const formatStr = "DD/MM/YYYY HH:mm:ss";
// const formatStrDash = "DD-MM-YYYY HH:mm:ss";
// const formatStrtoText = "dddd DD MMM de YYYY";

// console.log(today.format(formatStr));
// console.log(today.format(formatStrDash));
// console.log(today.format(formatStrtoText));

console.log(today.add(5, "days").format("YYYY-MM-DD"));

console.log(dayjs("1912-01-01").fromNow());

console.log(today.subtract(3, "hours").format("MM/DD HH:mm:ss"));

Porque Guillermo usó RunJS tuve que hacerlo de esta otra forma. Usando npm init -y, importar dayjs, y hacer los import usando
la forma que puse arriba.

### Temporal API ###

no se puede ahcer porque no está habilitado aún.


## Semana 4 - Clase 3 Extendiendo SASS ##

**Resolviendo el ejercicio anterior**

Archivo es : offline/fechas-js

Yo pensé que el ejercicio pedía fechas del futuro, pero era sin definir si eran del futuro o pasado. Debíamos darle los limites nosotros.

El resultado de Guillermo es:


### Sobre Javascript en Nodejs vs Javascript en Browsers"###

No todas las bibliotecas de JS de cliente corren en servidor (Node js) y viceversa.

- Libreria Isomórfica = Porque se ejecuta por el lado del servidor o por el lado del cliente. También llamado Librería Universal.

En Node js, se "llama" a librerias o bibliotecas usando:
    import dayjs from "dayjs"

Si usaramos javascript en cliente, tendríamos que usar:

    require dayjs from "dayjs.js"

No recuerdo cuál es ECMAScript y cual no. Veré después.

CTRL + ALT + SHIFT + Y = Controlar todos los punteros de las lineas seleccionadas.

`solucion-guillermo.js`

Es importante hablar con el Product Manager para saber si es necesario tirar un error en el último caso, donde pregunto sobre fechas del futuro. 


### Preprocesador SASS ###

    $primary-color: #3d5afe;

    @mixin button-style {
        display: inline-block;
        padding: 12px 24px;
        font-size: 16px;
        color: #fff;
        background-color: $primary-color;
        border-radius: 4px;
    }

Para desarrollar, es necesario dejar en package.json, que para DESARROLLO guardemos SASS y VITE

    npm install -D vite
    npm install -D sass

Dentro de package debo agregar un script de run, que le indique a sass que guarde los códigos en styles/main.scss y que los transpile a main.css

    "dev": "vite",
    "sass": "sass styles/main.scss styles/.css",


**npm run**

Si usas `npm run`sin especificar la tarea o script a ejecutar, te va a mostrar un listado de las tareas disponibles junto con sus descripciones.

**concurrently**

Si hago modificaciones a los archivos SASS sin hacer el precompilado aparte, no actualizará nunca.
He habilitado `concurrently` nuevamente para que funcione el servidor de VITE y además que se preocupe de hacer WATCH a la carpeta 'styles' con el siguiente código del package.js

  "scripts": {
    "dev:src": "vite",
    "dev:sass": "sass --watch styles/main.scss styles/main.css",
    "dale": "concurrently \"npm run dev:sass\" \"npm run dev:src\""
  },  

#### Variables de SASS ####

Se usa dolar para el nombre y semicolon.

    $color-main: #fff;

#### Mixin ####

Son funciones pero pegables. Como trozos de codigo. Un pedazo de css que se puede repetir cuando se llama.

#### Funciones y condicionales ####

Similares a lenguajes de programación. Sirve para hacer cosas.

#### Loops ####

Igualito a los for, while, etc.


Ejemplo completo:

    @use "base.scss";

    main {
    padding: 0 20px;
    }

    //Variables de SASS

    $color-main: #0074d9;


    //Mixin SALVAJE HORRIBLE DE MALO; NO USAR. SOLO DEMO

    @mixin center($ancho, $alto) {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: $ancho;
        height: $alto;
    }


    // Modificando una clase con SASS

    .button {
        background-color: $color-main;
        color: white;
        padding: 15px 64px;
        border-radius: 8px;
        border: none;

        //Incorporé el mixin anterior dentro de los estilos de .button.
        @include center(200px, 50px);

        //Condicionales

        @if $color-main == #0074d9 {
            //Shortcut
            &:hover {
                background-color: #fff;
            }
        }

        //Loops
        @for $i from 1 to 5 {
            .text-#{$i} {
                font-size: $i * 10px;
            }
        }
    }

Hay más cosas para probar, pero seguimos mañana con Semana 4, Clase 4.
La tarea está buena. Ver el SS.

