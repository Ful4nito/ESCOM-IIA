---
tags:
  - Tercero
  - Matematicas
cssclasses:
  - MATEMATICAS
  - CUADRO-CHICO
---
[[ecuacionesDiferenciales_IIA2020.pdf|Programa Sintético: 📄]]
Profesor: Jorge Alberto Cruz Rojas [ >> Canal de Youtube](https://www.youtube.com/@SinlimitesconJorge)
Alumno: Jonathan Leon Baez Pacheco - Grupo: 3BV1
____
----
## I.  ECUACIONES DIFERENCIALES DE PRIMER ORDEN

### Clasificación de las ecuaciones diferenciales

Una ecuación diferencial es una ecuación que relaciona una función y sus derivadas. Se usan para describir cómo cambian las cosas con el tiempo, y para hacer predicciones

### Métodos de solución
#### Ecuaciones separables
Al integrar ambos lados de $p(y)dy=g(x)dx$, se obtiene una familia uniparamétrica de soluciones, que usualmente se expresa de manera implícita. 

_NOTA_ No hay necesidad de emplear dos constantes cuando se integra una ecuación separable, porque si escribimos $H(y)+C_{1}=G(x)+C_{2}$ entonces la diferencia $C_{2}-C_{1}$ se puede reemplazar con una sola constante $C$, como en la ecuación. En muchos casos de los capítulos siguientes, sustituiremos las constantes en la forma más conveniente para una ecuación dada. Por ejemplo, a veces se pueden reemplazar los múltiplos o las combinaciones de constantes con una sola constante.

>Una ecuación diferencial de primer orden de la forma
>$$\frac{dy}{dx}=g(x)h(y)$$
 se dice que es separable o que tiene variables separables.

__Ejemplos__

$\frac{dy}{dx}=y²xe^{3x+4y}$
$\frac{dy}{dx}=y²xe^{3x+4y}$


==Ejercicios 2.2==

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
| __9__  | $y\ln x\frac{dx}{dy}=\Bigl(\frac{y+1}{x}\Bigr)^{2}$     | $\frac{1}{2}y^{2}+2y+\ln y=\frac{1}{3}x^{3}\ln x-\frac{1}{9}^{3}+c$ |
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

#### Ecuaciones lineales

Las ecuaciones diferenciales lineales son una familia especialmente "amigable" de ecuaciones diferenciales en las que, dada una ecuación lineal, ya sea de primer orden o de un miembro de orden superior , siempre hay una buena posibilidad de que podamos encontrar alguna clase de solución de la ecuación, que podamos examinar

> Una ecuación diferencial de primer orden de la forma
> $$a_{1}(x)\frac{dy}{dx}+a_{0}(x)=g(x)$$
> se dice que es una ecuación lineal en la variable dependiente y

Se dice que la ecuación lineal es homogénea cuando $g(x)=0$ ; caso contrario es una ecuación no homogénea


==Ejercicios 2.3==

| N      | Ejercicio                                     | Respuesta                                                             |
| ------ | --------------------------------------------- | --------------------------------------------------------------------- |
| __1__  | $\frac{dy}{dx}=5y$                            | $y=ce^{5x}$                                                           |
| __2__  | $\frac{dy}{dx}+2y=0$                          | $y=ce^{-2x}$                                                          |
| __3__  | $\frac{dy}{dx}+y=e^{3x}$                      | $y=\frac{1}{4}e^{3x}+ce^{-x}$                                         |
| __4__  | $3\frac{dy}{dx}+12y=4$                        | $y=ce^{-4x}+\frac{1}{3}$                                              |
| __5__  | $y'+3x^{2}y=x^{2}$                            | $y=ce^{-x^{3}}+\frac{1}{3}$                                           |
| __6__  | $y'+2xy=x^{3}$                                | $y=\frac{1}{2}x^{2}+ce^{-x^{2}}-\frac{1}{2}$                          |
| __7__  | $x^{2}y'+xy=1$                                | $y=x^{-1}\ln \|x\|+cx^{-1}$                                           |
| __8__  | $y'=2y+x^{2}+5$                               | $y=ce^{2x}-\frac{1}{2}x^{2}-\frac{1}{2}x-\frac{11}{4}$                |
| __9__  | $x\frac{dy}{dx}-y=x^{2}\sin x$                | $y=cx-x\cos x$                                                        |
| __10__ | $x\frac{dy}{dx}+2y=3$                         | $y=cx^{-2}+\frac{3}{2}$                                               |
| __11__ | $x\frac{dy}{dx}+4y=x^{3}-x$                   | $y=\frac{1}{7}x^{3}+\frac{1}{5}x+cx^{-4}$                             |
| __12__ | $(1+x)\frac{dy}{dx}-xy=x+x^{2}$               | $y=\frac{ce^{x}}{x+1}-\frac{x^{2}}{x+1}-\frac{3x}{x+1}-\frac{3}{x+1}$ |
| __13__ | $x^{2}y'+x(x+2)y=e^{x}$                       | $y=\frac{1}{2}x^{-2}e^{x}+cx^{-2}e^{-x}$                              |
| __14__ | $xy'+(1+x)y=e^{-x}\sin2x$                     | $y=cx^{-1}e^{-x}-\frac{1}{2}x^{-1}e^{-x}\cos2x$                       |
| __15__ | $ydx-4(x+y^{6})dy=0$                          | $x=2y^{6}+cy^{4}$                                                     |
| __16__ | $ydx=(ye^{y}-2x)dy$                           | $x=e^{y}-2e^{y}y^{-1}+2e^{y}y^{-2}+cy^{-2}$                           |
| __17__ | $\cos x\frac{dy}{dx}+(\sin x)y=1$             | $y=\sin x +c\cos x$                                                   |
| __18__ | $\cos^{2}x\sin x\frac{dy}{dx}+(\cos^{3}x)y=1$ | $y=\sec x +c\csc x$                                                   |
| __19__ | $(x+1)\frac{dy}{dx}+(x+2)y=2xe^{-x}$          | $y=\frac{x^{2}}{e^{x}(x+1)}+\frac{c}{e^{x}(x+1)}$                     |
| __20__ | $(x+2)^{2}\frac{dy}{dx}=5-8y-4xy$             | $y=\frac{5}{3(x+2)}+\frac{c}{(x+2)^{4}}$                              |

#### Ecuaciones exactas

==Ejercicios 2.4==

| N      | Ejercicio                                                                           | Respuesta |
| ------ | ----------------------------------------------------------------------------------- | --------- |
| __1__  | $(2x-1)dx+(3y+7)dy=0$                                                               |           |
| __2__  | $(2x+y)dx-(x+6y)dy=0$                                                               |           |
| __3__  | $(5x+4y)dx+(4x-8y^{3})dy=0$                                                         |           |
| __4__  | $(\sin y-y\sin x)dx+(\cos x+x\cos y-y)dy=0$                                         |           |
| __5__  | $(2xy^{2}-3)dx+(2x^{2}y+4)dy=0$                                                     |           |
| __6__  | $\left(2y-\frac{1}{x}+\cos3x\right)\frac{dy}{dx}+\frac{y}{x^{2}}-4x^{3}+3y\sin3x=0$ |           |
| __7__  | $(x^{2}-y^{2})dx+(x^{2}-2xy)dy=0$                                                   | no exacta |
| __8__  | $\left( 1+\ln x+\frac{y}{x} \right)dx=(1-\ln x)dy$                                  |           |
| __9__  | $(x-y^{3}+y^{2}\sin x)dx=(3xy^{2}+2y\cos x)dy$                                      |           |
| __10__ | $(x^{3}+y^{3})dx+3xy^{2}\space dy=0$                                                |           |
| __11__ | $(y\ln y-e^{-xy})dx+\left( \frac{1}{y}+x\ln y \right)dy=0$                          |           |
| __12__ | $(3x^{2}y+e^{y})dx+(x^{3}+xe^{y}-2y)dy=0$                                           |           |
| __13__ |                                                                                     |           |
| __14__ |                                                                                     |           |
| __15__ |                                                                                     |           |
| __16__ |                                                                                     |           |
| __17__ |                                                                                     |           |
| __18__ |                                                                                     |           |
| __19__ |                                                                                     |           |
| __20__ |                                                                                     |           |

#### Sustitución


==Ejercicios 2.5==

| N      | Ejercicio                | Respuesta |
| ------ | ------------------------ | --------- |
| __1__  | $(x-y)dx+xdy=0$          |           |
| __2__  | $(x+y)dx+xdy=0$          |           |
| __3__  | $xdx+(y-2x)dy=0$         |           |
| __4__  | $ydx=2(x+y)dy$           |           |
| __5__  | $(y^{2}+yx)dx-x^{2}dy=0$ |           |
| __6__  | $(y^{2}+yx)dx+x^{2}dy=0$ |           |
| __7__  |                          |           |
| __8__  |                          |           |
| __9__  |                          |           |
| __10__ |                          |           |
| __11__ |                          |           |
| __12__ |                          |           |
| __13__ |                          |           |
| __14__ |                          |           |
| __15__ |                          |           |
| __16__ |                          |           |
| __17__ |                          |           |
| __18__ |                          |           |
| __19__ |                          |           |
| __20__ |                          |           |


----
## II.  ECUACIONES DIFERENCIALES DE ORDEN SUPERIOR

----
## III.  TRANSFORMADA DE LAPLACE

----
## IV.  TRANSFORMADA DE FOURIER

