## Semana 1

Acá no hay mucho de clases solo la info del Pre-work

### Instalación en Windows con WSL (Windows 10, 11)
- Abre la terminal de Ubuntu.
- Ejecuta `sudo apt update` para actualizar la info del repositorio de dependencias.
- Ejecuta `sudo apt install git-all`
- Asegurate que haya instalado ejecutando `git --version`
- Actualiza tu nombre y correo ejecutando los siguientes comandos:

<pre>
git config --global user.name "Tú nombre"
git config --global user.email "tu_correo@ejemplo.com"
</pre>

Cuando se realicen los commit, éstos van a generar un HASH que irá añadido a tu Nombre y Correo, para poder manejar y controlar quién sube qué cosas y en qué momento. (Versionar)

Fuente: [Undefined Shell](https://undefinedshell.notion.site/2-Instalar-Git-2a65a86fc7d648cb83aaeb7ef2743d8c).

## Semana 1 C2

Acá empezó la parte de GIT y GitHub

Repositorio es como un restaurante.

- Working Directory es la cocina donde se hacen los ajustes.
- Staging Area: Es el área donde los platos están listos para ser llevados al cliente.
- Commit History: Todo lo que esté en el Staging Area se va al cliente *commit*

### Secuencia Básica de un Commit:

| Comando | Accion |
|-|-|
| git init| Iniciar control de versiones |
| git status | Muestra el estado actual del proceso de versionado |
| git add -archivo- | Agrega el archivo al Staging Area | 
| git commit -m "mensaje" | Haces el commit con un mensaje descriptivo |
| git log | Revisamos  el log de commits realizados | 

Vamos a hacer el primer repo local.

`IMPORTANTE`
Revisar y comprobar en qué carpeta estás parado antes de hacer el 'git init'. Recién casi la cago.

Pero por si la cagas, puedes hacer 
<pre>
>rm -rf .git
</pre>

Para borrar los archivos de git que pusiste en la carpeta equivocada. `Empecemos`

**Working Area**

Vamos a el-mundo-del-markdown.
>git init

Este comando genera o da inicio a un repositorio local (PC-Offline). Crea un archivo oculto .git y sus carpetas mágicas para el control de versiones.

Si bien no lo mencionó en el video, hay un archivo que se llama .gitignore que permite decirle al motor de GIT que no guarde ciertos documentos o carpetas. Pueden ser trozos de source o node_modules o cosas que no quiero versionar.

**.gitignore**

>touch .gitignore

Después con NaNo o con VS Code agregué linea por línea los archivos/carpetas que no quise subir. En este caso, fueron _site (la prueba que hice con 11ty)
dillinger_ejemplo.md (el archivo de muestra de Markdown.) entre otros.

Después que dejé esos ignorados, usé git add . para que agregue todos los archivos de el-mundo-del-markdown en el repo de git.

**Staging Area**

>git add .

En VSCode se ve que en el apartado de GIT, los archivos ahora tienen una M = Modificado.

|id|Estado| Descripcion |
|-|-|-|
| M | Modificado | Si uso 'gst' o git status voy a ver que están en rojo, modificados |
| M amarillo | En Staging Area | En 'gst' se ve amarillo, esperando ser ofrecido al 'cliente' con commit |

En el bloque de Git de VS Code se puede ver cuándo un archivo es movido a Staging en el acordeón del panel lateral. Es como una ayuda visual.

**Commit**
Al hacer commit, todo lo que esté en la zona de preparación o Staging Area, será versionado. Es importante que le agreguemos un mensaje para ir guardando la descripción de los cambios principales y no olvidar qué cosas vamos cambiando.

Aún no sé cuándo ni cómo se pueden ir haciendo "números de versión" o si lo hace automático. Espero poder preguntar después en Discord.

Si no se agrega mensaje, el commit se detiene y tira un mensaje de _abort_

## Ramas y Merge

Branch es el nombre que reciben las variaciones en el multiverso, como lo puso Guillermo. La mejor explicación ñoña ever.

La rama es una copia del master donde se crean nuevas funcionalidades. Si la rama funciona, se puede "unir / merge" a la rama principal. 

Si no funciona o si queda pendiente, se puede pegar después o sino quedar ahi tirada hasta que se decida eliminar o archivar.

|paso| comando | resultado|
|-|-|-|
|1 | git branch -nombre-rama-nueva | creamos una rama nueva |
|2| git branch | ver todas las ramas disponibles |
|3| git checkout -nombre-rama-a-cambiarse | Salir de una rama y entrar a otra antigua (forma vieja)|
|4| git checkout -b rama-nueva | salir de una rama, crear otra nueva y saltar a esa (forma vieja)|


Ahora, en el stream vimos como se actualizó el tema de las ramas, y se cambio la palabra `checkout` por `switch`. Siento que tiene más sentido esta última, porque significa "cambiar" en vez de "salir".

>git switch nombre-de-rama-existente

Y también se puede cambiar de rama, crear otra y cambiarse a esa nueva, con el formato nuevo:

>git switch -c nombre-de-nueva-rama

Probé un par de veces git switch main/master y se ve como un lado guarda cosas y el otro no.

**Importante**

Antes de dejar una rama y pensar en Merge o Rebase o cualquier otro comando raro que desconozco, es importante que los cambios sean almacenados siempre con commit. No dejar weas a medio hacer.

Si quiero dejar algo almacenado temporalmente en "caché", se puede usar un comando llamado STASH, que usé en otro lado pero que probablemente otro día lo complete acá.

---
`Agregar info de STASH ACÁ`

---


**Merge Branch**

Ahora, si ya probé la funcionalidad y estoy contento, debería "pegar" esas modificaciones al "universo central o master"

Para esto debo salir del branch que posee los cambios, y posicionarme en el branch que va a `recibir` las modificaciones. Y de ahí se ejecuta:

>git merge -nombre-del-feature-que-se-agregara-al-core

## Repositorios Remotos

En GitHub, debemos crear un nuevo repositorio, y desde donde está un tab de HTTPS/SSH sacar la ruta del repo remoto, para SSH y evitar tener que meter la contraseña a cada rato. (Pre-work)

Ahora, a este repo local, debo agregar la ubicación remota donde se almacenarán las cosas.

Origin es una palabra clave estándar para definir el `origen remoto` de este repo remoto.

>git remote add origin dirección

<pre>
>git remote add origin git@github.com:OrcaCl/el-mundo-del-markdown.git
</pre>

Ahora vamos a hacer el primer push, que es enviar al repo remoto, una copia de nuestro repo local para que tengamos las mismas cosas sincronizadas y listas para seguir trabajando en otro lugar o con otro grupo de personas.

Si uso el comando:
>git remote -v

Puedo revisar si la config anterior quedó bien hecha.
Si me equivoqué al escribir "origin" y puse "origen" o "cafe" o "caca", puedo corregir esto usando:

>git remote rm caca

Y esa config se va a borrar y puedo partir otra vez configurando el remoto.

### Eliminar el tracking a un archivo que ya subimos al repo remoto.

Para quitar el tracking a un archivo, en local hay que escribir el siguiente comando:

>git rm --cached file.md

Después hay que hacer el commit para que establezca los cambios

>git commit -m "quitando el track a archivo"

Finalmente hay que agregar a .gitignore para que no lo vuelva a subir.

NOTA: Esto solo cambia las cosas en local. Si ya subimos el archivo al repo remoto, hay que borrarlo allá también.


## Fork, Clone y Pull Request

### Clone

Clonar, es hacer una copia del repo de alguien o de ti mismo, para poder seguir con la creación e historial del mismo repositorio. Puedes hacer pulls y push, merge, crear branches etc. Pero tienes que estar dentro del grupo de usuarios autorizados para poder modificar sino no puedes hacer nada.

### Fork

Fork es tomar el repo de una persona, hacer una copia externa y tener la posibilidad de hacer y deshacer con la misma, agregar features nuevos, quitar cosas, dejar la escoba si quieres. Es lo opuesto a Clone.

### Pull-Request

El resumen de **Pull-Request** es que :

_"Pull-Request" es una petición para que el 'creador original' tome en consideración los cambios o features que yo haga en mi copia externa (o fork) de su repositorio, para ser aplicados (merge) en el hilo (o universo) original del repo?_

Tal cual

### Error para hacer Push

Hace unos días tuve problemas para hacer el primer (o segundo) PUSH. Me tiraba error de cambios. En el repo remoto habían modificaciones que no hice en local ( o algo así.) No pude recordar qué hice, pero como dijo el profe, con "rebase" se puede modificar el "historial" del repo y de los commits.

Ya me acordé que sucedió. Hice git add, git commit un día y apagué sesión. Al otro día, modifiqué cosas en local, git add, git commit y ahí traté de hacer push y me hizo cortocircuito porque me quedó un commit sin push del día anterior con otras modificaciones.

Hice hartos comandos que no estoy muy seguro si fue correcto hacerlos, como :

>git config --global pull.rebase false

Que lo sugería el alert que me salió con el error.

También sugería hacer:
>git pull / git fetch

La solución, gracias a **Codernicola** fue hacer el siguiente comando:
>git config --global pull.rebase false

Con esto, git se "olvida" de tratar de discutirme con que los remotos están adelantados y los locales atrasados.


## Semana 2

### Cherrypick

No lo he aplicado, pero Guillermo comentó al final del episodio 2, semana 2, el funcionamiento de git cherrypick.

En un contexto en que hayan 2 "multiversos", en la rama continua, si tiene muchos commit, podemos usar el comando **cherry-pick** para tomar el último commit de esa rama y traerlo a la rama base o main, y hacer el merge. También podemos tomar el último commit de esa rama y moverlo para otro lado. La analogía viene de tomar la cereza de la torta.

