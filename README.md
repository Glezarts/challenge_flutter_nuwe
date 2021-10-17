# challenge_flutter_nav_nuwe

[![CodeFactor](https://www.codefactor.io/repository/github/glezarts/challenge_flutter_nuwe/badge)](https://www.codefactor.io/repository/github/glezarts/challenge_flutter_nuwe)

## Getting Started
Para empezar este challenge, creamos la estructura de clasificación de los archivos y borramos el código predeterminado de flutter.
Carpetas:
1. configuration: Aquí se encuentra el archivo que declara los colores que se usan, para pasarlos como variable en el widget correspondiente y no repetir su "declaración".
2. pages: Aquí desarrolla la página, en donde se unen todos los widgets. Second item
3. widget: Desarrollo de los diferentes widgets que forman la página.

Hice varias pruebas con otro tipo de Widget como el ListView.builder pero me daba ciertos problemas para encontrar el resultado que buscaba. Por ello, tras buscar en la documentación oficial, use el widget NavigationRail, aunque creo que mi código con este, se podría refactorizar. 

Problemas: Para el cambio de la apariencia del botón, intenté utilizar el operador ternario para cambiar la apariencia del borde, pero no funcionaba con el gradient, y quería ser lo más fiel al diseño de Figma, por eso en el archivo card-circular hay dos clases diferentes. 
Para hacer el task 2 y 3, mi idea era declarar el widget NavigationRailDestination en un final, hacer una función con el condicional para que se añadiera si el index del array era menor que 10, y luego añadir esa función a la lista (con método array) que formaba su contenedor, probe de muchas maneras, pero no pude encontrar la solución.

Y el mensaje de aviso, aunque no está desarrollado porque me bloquee en lo anterior, sería hacer un condicional en el que si el index del array es >=10, devolvería un Widget como por ejemplo, SnackBar con el texto que se pide ('Has alcanzado el límite')


Muchas gracias!!!

 
