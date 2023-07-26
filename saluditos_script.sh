#!/bin/bash
#
# Agregar al final de su archivo  .bashrc  la siguiente linea:
# source ~/saluditos_script.sh
# reiniciar la terminal o ejecutar el comando: source ~/.bashrc para revisar los cambios.

# Function to generate a random number between 0 and the given number
function numero_azar() {
	local max_num=$1
	echo $((RANDOM % max_num))
}

# Array of greeting messages
saludos=(
	"Hello There!"
	"Welcome Back!"
	"Greetings, my friend!"
	"Good to see you again!"
	"Have a fantastic day!"
	    "¡Hola! Bienvenido/a al mundo del código, donde creamos nuevas experiencias juntos para un futuro mejor. (Spanish) Saludo en español."

    "Hello! Welcome to the world of coding, where we create new experiences together for a better future. (English) Saludo en inglés."

    "Привет! Добро пожаловать в мир кодирования, где мы вместе создаем новые впечатления для лучшего будущего. (Russian) Saludo en ruso."

    "こんにちは！ コーディングの世界へようこそ。一緒に新しい体験を作り、より良い未来を築きましょう。 (Japanese) Saludo en japonés."

    "Ciao! Benvenuto nel mondo del codice, dove insieme creiamo nuove esperienze per un futuro migliore. (Italian) Saludo en italiano."

    "Hallo! Willkommen in der Welt des Codierens, wo wir gemeinsam neue Erfahrungen für eine bessere Zukunft schaffen. (German) Saludo en alemán."

    "¡Hola! Hagamos del código una herramienta para mejorar la vida de las personas y el medio ambiente. (Spanish) Saludo en español."

    "Hello! Let's make code a tool for improving people's lives and the environment. (English) Saludo en inglés."

    "Привет! Давайте сделаем код инструментом для улучшения жизни людей и окружающей среды. (Russian) Saludo en ruso."

    "こんにちは！コードを人々の生活と環境を改善するためのツールにしましょう。 (Japanese) Saludo en japonés."

    "Ciao! Facciamo del codice uno strumento per migliorare la vita delle persone e l'ambiente. (Italian) Saludo en italiano."

    "Hallo! Machen wir den Code zu einem Werkzeug, um das Leben der Menschen und die Umwelt zu verbessern. (German) Saludo en alemán."

    "¡Hola! Recuerda siempre ser consciente de cómo tu código afecta a los demás y al mundo que te rodea. (Spanish) Saludo en español."

    "Hello! Always remember to be aware of how your code affects others and the world around you. (English) Saludo en inglés."

    "Привет! Не забывайте всегда быть внимательными к тому, как ваш код влияет на других и мир вокруг вас. (Russian) Saludo en ruso."

    "こんにちは！あなたのコードが他の人や周りの世界にどのような影響を与えるかを常に意識しましょう。 (Japanese) Saludo en japonés."

    "Ciao! Ricorda sempre di essere consapevole di come il tuo codice influisce sugli altri e sul mondo circostante. (Italian) Saludo en italiano."

    "Hallo! Denke immer daran, wie sich dein Code auf andere und die Welt um dich herum auswirkt. (German) Saludo en alemán."

    "¡Hola! Cuida a tus seres queridos como cuidas tus líneas de código, con amor y dedicación. (Spanish) Saludo en español."

    "Hello! Care for your loved ones like you care for your lines of code, with love and dedication. (English) Saludo en inglés."

    "Привет! Заботьтесь о своих близких так же, как о своем коде — с любовью и преданностью. (Russian) Saludo en ruso."

    "こんにちは！コードの行を大切にするように、愛と献身を持ってあなたの愛する人を大切にしてください。 (Japanese) Saludo en japonés."

    "Ciao! Prenditi cura dei tuoi cari come fai con le tue righe di codice, con amore e dedizione. (Italian) Saludo en italiano."

    "Hallo! Kümmere dich um deine Lieben so wie um deine Codezeilen, mit Liebe und Hingabe. (German) Saludo en alemán."

    "¡Hola! Ten fe en que cada línea de código que escribas es un paso hacia un futuro mejor. (Spanish) Saludo en español."

    "Hello! Have faith that every line of code you write is a step towards a better future. (English) Saludo en inglés."

    "Привет! Верьте, что каждая строка кода, которую вы пишете, — это шаг к лучшему будущему. (Russian) Saludo en ruso."

    "こんにちは！あなたが書くコードの各行がより良い未来への一歩であることを信じてください。 (Japanese) Saludo en japonés."

    "Ciao! Abbi fede che ogni riga di codice che scrivi sia un passo verso un futuro migliore. (Italian) Saludo en italiano."

    "Hallo! Habe Vertrauen, dass jede Codezeile, die du schreibst, ein Schritt zu einer besseren Zukunft ist. (German) Saludo en alemán."
)

#Display a random greeting message
saludo_azar=${saludos[$(numero_azar ${#saludos[@]})]}
echo "$saludo_azar"
