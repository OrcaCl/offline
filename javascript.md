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

**22-03-2023**

//La solución de Guillermo, fue usando la propiedad de "largo" de un arreglo. 

Los Arrays tienen la propiedad de largo, mientras que los objetos no.

>let arr = ['verde','azul','caca'];
>arr.lenght // para ver la cantidad de elementos que tiene el array.
>typeof arr === 'object' && arr.lenght != null
>true

Y funciona, pero si al array le ingresamos el valor:
>let arr = { lenght: true }

la comprobación se fue al carajo.
