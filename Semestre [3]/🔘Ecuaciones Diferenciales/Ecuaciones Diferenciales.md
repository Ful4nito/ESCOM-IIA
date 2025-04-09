#Tercero #Matematicas
[[ecuacionesDiferenciales_IIA2020.pdf|Programa Sintético: Ecuaciones Diferenciales]]
Profesor: Jorge Alberto Cruz Rojas [ >> Canal de Youtube](https://www.youtube.com/@SinlimitesconJorge)
____
----

## UNIDAD I
~~Ecuaciones diferenciales de primer orden~~
### Clasificación de las ecuaciones diferenciales

### Métodos de solución
#### Ecuaciones separables
>Una ecuación diferencial de primer orden de la forma
$$\frac{dy}{dx}=g(x)h(y)$$
 se dice que es separable o que tiene variables separables.

==Ejemplos==

$\frac{dy}{dx}=y²xe^{3x+4y}$
$\frac{dy}{dx}=y²xe^{3x+4y}$

Al integrar ambos lados de $p(y)dy=g(x)dx$, se obtiene una familia uniparamétrica de soluciones, que usualmente se expresa de manera implícita. 

_NOTA_ No hay necesidad de emplear dos constantes cuando se integra una ecuación separable, porque si escribimos $H(y)+C_{1}=G(x)+C_{2}$ entonces la diferencia $C_{2}-C_{1}$ se puede reemplazar con una sola constante $C$, como en la ecuación (4). En muchos casos de los capítulos siguientes, sustituiremos las constantes en la forma más conveniente para una ecuación dada. Por ejemplo, a veces se pueden reemplazar los múltiplos o las combinaciones de constantes con una sola constante.

==Ejercicios==

| N      | Ejercicio                                               | Respuesta                                                           |
| ------ | ------------------------------------------------------- | ------------------------------------------------------------------- |
| __1__  | $\frac{dy}{dx}=\sin5x$                                  | $y=-\frac{1}{5}\cos 5x+c$                                           |
| __2__  | $\frac{dy}{dx}=(x+1)^{2}$                               | $y=\frac{(x+1)^{3}}{3}+c$                                           |
| __3__  | $dx+e^{3x}dy=0$                                         | $y=\frac{1}{3e^{3x}}+c$                                             |
| __4__  | $dy-(y-1)^{2}dx=0$                                      | $y=1-\frac{1}{x+c}$                                                 |
| __5__  | $x\frac{dy}{dx}=4y$                                     | $y=cx^{4}$                                                          |
| __6__  | $\frac{dy}{dx}+2xy^{2}=0$                               | $y=\frac{1}{x^{2}+c}$                                               |
| __7__  | $\frac{dy}{dx}=e^{3x+2y}$                               | $3e^{-2y}=-2e^{3x}+c$                                               |
| __8__  | $e^{x}y\frac{dy}{dx}=e^{-y}+e^{-2x-y}$                  | $y\,{e}^{y}-{e}^{y}=-\dfrac{1}{{e}^{x}}-\dfrac{1}{3\,{e}^{3\,x}}+c$ |
| __9__  | $y\ln x\frac{dx}{dy}=\Bigl(\frac{y+1}{x}\Bigr)^{2}$     |                                                                     |
| __10__ | $\frac{dy}{dx}=\Bigl(\frac{2y+3}{4x+5}\Bigr)^{2}$       |                                                                     |
| __11__ | $\csc y\space dx+\sec^{2}x\space dy=0$                  |                                                                     |
| __12__ | $\sin 3x\space dx+2y\cos^{3}3x\space dy=0$              |                                                                     |
| __13__ | $(e^{y}+1)^{2}e^{-y}dx+(e^{x}+1)^{3}e^{-x}dy=0$         |                                                                     |
| __14__ | $x(1+y^{2})^{\frac{1}{2}}dx=y(1+x^{2})^{\frac{1}{2}}dy$ |                                                                     |
| __15__ | $\frac{dS}{dr}=kS$                                      |                                                                     |
| __16__ | $\frac{dQ}{dt}=k(Q-70)$                                 |                                                                     |
| __17__ | $\frac{dP}{dt}=P-P^{2}$                                 |                                                                     |
| __18__ | $\frac{dN}{dt}+N=Nte^{t+2}$                             |                                                                     |
| __19__ | $\frac{dy}{dx}=\frac{xy+3x-y-3}{xy-2x+4y-8}$            |                                                                     |
| __20__ | $\frac{dy}{dx}=\frac{xy+2y-x-2}{xy-3y+x-3}$             |                                                                     |

#### Factor integrante

==Ejercicios==

| N    | Ejercicio                                     | Respuesta |
| ---- | --------------------------------------------- | --------- |
| _1_  | $\frac{dy}{dx}=5y$                            |           |
| _2_  | $\frac{dy}{dx}+2y=0$                          |           |
| _3_  | $\frac{dy}{dx}+y=e^{3x}$                      |           |
| _4_  | $3\frac{dy}{dx}+12y=4$                        |           |
| _5_  | $y'+3x^{2}y=x^{2}$                            |           |
| _6_  | $y'+2xy=x^{3}$                                |           |
| _7_  | $x^{2}y'+xy=1$                                |           |
| _8_  | $y'=2y+x^{2}+5$                               |           |
| _9_  | $x\frac{dy}{dx}-y=x^{2}\sin x$                |           |
| _10_ | $x\frac{dy}{dx}+2y=3$                         |           |
| _11_ | $x\frac{dy}{dx}+4y=x^{3}-x$                   |           |
| _12_ | $(1+x)\frac{dy}{dx}-xy=x+x^{2}$               |           |
| _13_ | $x^{2}y'+x(x+2)y=e^{x}$                       |           |
| _14_ | $xy'+(1+x)y=e^{-x}\sin2x$                     |           |
| _15_ | $ydx-4(x+y^{6})dy=0$                          |           |
| _16_ | $ydx=(ye^{y}-2x)dy$                           |           |
| _17_ | $\cos x\frac{dy}{dx}+(\sin x)y=1$             |           |
| _18_ | $\cos^{2}x\sin x\frac{dy}{dx}+(\cos^{3}x)y=1$ |           |
| _19_ | $(x+1)\frac{dy}{dx}+(x+2)y=2xe^{-x}$          |           |
| _20_ | $(x+2)^{2}\frac{dy}{dx}=5-8y-4xy$             |           |

#### Ecuaciones exactas

| N   | Ejercicio | Respuesta |
| --- | --------- | --------- |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
_1._ $\frac{dy}{dx}$
_2._ $\frac{dy}{dx}$
_3._ $\frac{dy}{dx}$
_4._ $\frac{dy}{dx}$
_5._ $\frac{dy}{dx}$
_6._ $\frac{dy}{dx}$
_7._ $\frac{dy}{dx}$
_8._ $\frac{dy}{dx}$
_9._ $\frac{dy}{dx}$
_10._ $\frac{dy}{dx}$
_11._ $\frac{dy}{dx}$
_12._ $\frac{dy}{dx}$
_13._ $\frac{dy}{dx}$
_14._ $\frac{dy}{dx}$
_15._ $\frac{dy}{dx}$
_16._ $\frac{dy}{dx}$
_17._ $\frac{dy}{dx}$
_18._ $\frac{dy}{dx}$
_19._ $\frac{dy}{dx}$
_20._ $\frac{dy}{dx}$

#### Sustitución

| N   | Ejercicio | Respuesta |
| --- | --------- | --------- |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
|     |           |           |
_1._ $\frac{dy}{dx}$
_2._ $\frac{dy}{dx}$
_3._ $\frac{dy}{dx}$
_4._ $\frac{dy}{dx}$
_5._ $\frac{dy}{dx}$
_6._ $\frac{dy}{dx}$
_7._ $\frac{dy}{dx}$
_8._ $\frac{dy}{dx}$
_9._ $\frac{dy}{dx}$
_10._ $\frac{dy}{dx}$
_11._ $\frac{dy}{dx}$
_12._ $\frac{dy}{dx}$
_13._ $\frac{dy}{dx}$
_14._ $\frac{dy}{dx}$
_15._ $\frac{dy}{dx}$
_16._ $\frac{dy}{dx}$
_17._ $\frac{dy}{dx}$
_18._ $\frac{dy}{dx}$
_19._ $\frac{dy}{dx}$
_20._ $\frac{dy}{dx}$

----
## UNIDAD II
~~Ecuaciones diferenciales de orden superior~~


----
## UNIDAD III
~~Transformada de Laplace~~


----
## UNIDAD IV
~~Transformada de Fourier~~

____

