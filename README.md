# Stanford course CS229, https://see.stanford.edu/Course/CS229/

### Preguntas
1. Supongamos tengo que cada vector $x_i$ es $n$ dimensional, y además tengo $m$ observaciones, con $k$ diferentes posibles valores para $y^(i)$. Si quiero utilizar *softmax regression* debo estimar $\theta_1, \dots, \theta_k \in R^{n+1}$. Por lo tanto en total debería estimar $(k-1)*(n+1)$ parámetros a estimar. Caso particular: regresión logistica.

¿Por qué en el video https://see.stanford.edu/Course/CS229/50 en el min 47:23, da la probabilidad n=50.000, k = 2, y dice que se debemn estimar $2^(50.000)$ diferentes parámetros para esto.

### Respuesta
1. Porque está buscando estimar p(x|y) mientras sque en la explicación anterior se estaba tratando de hallar p(y|x).
