# Mark.md
Mark.md es un archivo que acabo de armar (05-03-2023) para organizar todas las cosas que he aprendido de `Markdown`.

Este sistema de creación de páginas en HTML para para tomar apuntes me ha gustado bastante porque me permite ponerle estilo a las cosas sin la necesidad de tener que caer en el mouse y/o interfaz para destacar u organizar la información.

Sé que tiene otra descripción pero es el uso apropiado que le he encontrado para tomar apuntes en este bootcamp y que probablemente repita cuando empiecen mis clases formales del otro bootcamp.

## TL;DR

Voy a anotar en "formato" cómo debe escribirse en "source" y al lado la descripción de cómo se ve.

| Formato | Etiqueta HTML | Descripción |
|-|-|-|
| # titulo | H1| Título principal. 1 Hashtag Titulo. | 
| ## titulo | H2 | Titulo secundario. 2 hashtags titulo |
| ### titulo | H3 | Titulo nivel 3 . 3 hashtag titulo. - Así hasta el H6 |
| texto | p | Escribir sin monos es párrafo normal | 
| **texto** | strong | Negrita. |
| `texto` | n/a | Es una decoración de color en el texto. Desconozco si se puede cambiar el color. | 
| _texto_ | italics | Cursiva. Es el tilde invertido, como en javascript |
| <pre></pre> | pre | Para escritura de código fuente | 
| - texto | lista ul | Listar cosas. |

🦄 - Windows + (punto): Abre la cajita para los emojis 😊

## Sobre previsualizar Markdown en VS Code

Otra cosa que aprendí es a probar como se ve Markdown dentro de VS Code.
Hay que presionar la combinación de teclas **CTRL+Shift+P** para abrir el buscador de VSCode, y posteriormente escoger Open Preview WSL o **CTRL+Shift+O** para que abra otra pestaña


# Ejemplos:

Acá algunos ejemplos aplicados de la tabla superior

# Titulo H1
## Título H2
### Título H3
#### Titulo H4
##### Titulo H5
###### Titulo H6


Creo que acá hace código fuente
<pre>

-[] Lista de elementos
-[x] Lista de elementos. Completado 1

</pre>

Encontré un link donde cuentan cómo se pueden hacer comentarios en markdown que no se tranformen a HTML. Al parecer es un tipo de Hack, porque usa el comando para links pero no los termina correctamente.

[comment]: # (Lo probé acá arriba y no aparece. Igual es bien engorroso como para considerarlo, pero puedo acostumbrarme.)

<pre>
[comment]: # (This is a comment, it will not be included. Lo probé acá arriba y no aparece. Igual es bien engorroso como para considerarlo, pero puedo acostumbrarme.)

Otra forma más corta sería: 
[//]: # (Comentario)
</pre>

Esto lo aprendí desde: [StackOverflow](https://stackoverflow.com/questions/4823468/comments-in-markdown)



