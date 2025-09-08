---
cssclasses:
  - HWK
---
--- 
## Complejidad Temporal y Espacial
---
~~02 SEPTIEMBRE 2025~~

``` c
# Promedio(numeros,n)
1	suma = 0
2	for i=0 to n-1
3		suma+=numeros[i]
4	prom = suma/n		
```

| Instrucción        | Costo | Tiempo | Corregido |     | Variable    | Costo | Espacio |
| ------------------ | :---: | :----: | :-------: | :-: | ----------- | :---: | :-----: |
| `suma = 0`         |  C1   |   1    |           |     | `suma`      |  C1   |    1    |
| `for i=0 to n-1`   |  C2   |  n+1   |           |     | `i`         |  C2   |    1    |
| `suma+=numeros[i]` |  C3   |   n    |           |     | `n`         |  C3   |    1    |
| `prom = suma/n`    |  C4   |   1    |           |     | `numeros[]` |  C4   |    n    |
|                    |       |        |           |     | `prom`      |  C5   |    1    |

``` C
# Funcion1(n)
1	i = 0
2	while(i<n)
3		if(i==⌊n/2⌋)
4			break
5		i++
```

| Instrucción    | Costo |  Tiempo   | Corregido |     | Variable | Costo | Espacio |
| -------------- | :---: | :-------: | :-------: | :-: | :------: | :---: | :-----: |
| `i = 0`        |  C1   |    $1$    |           |     |   `i`    |  C1   |    1    |
| `while (i<n)`  |  C2   |   $n+1$   |  ⌊n/2⌋+1  |     |   `n`    |  C2   |    1    |
| `if(i==⌊n/2⌋)` |  C3   | $⌊n/2⌋+1$ |           |     |          |       |         |
| `break`        |  C4   |    $1$    |           |     |          |       |         |
| `i++`          |  C5   |  $⌊n/2⌋$  |           |     |          |       |         |

``` C
# Funcion2(n)
1 i = 1
2	do
3		print i
4		i+=3
5	while(i<=n)
```

| Instrucción   | Costo |   Tiempo    |     | Variable | Costo | Espacio |
| ------------- | :---: | :---------: | :-: | :------: | :---: | :-----: |
| `i = 1`       |  C1   |     $1$     |     |   `i`    |  C1   |    1    |
| `do`          |  C2   | $⌊(n+2)/3⌋$ |     |   `n`    |  C2   |    1    |
| `print i`     |  C3   | $⌊(n+2)/3⌋$ |     |          |       |         |
| `i+=3`        |  C4   | $⌊(n+2)/3⌋$ |     |          |       |         |
| `while(i<=n)` |  C5   | $⌊(n+2)/3⌋$ |     |          |       |         |

---
~~04 SEPTIEMBRE 2025~~

``` C
# Funcion1(n)
1 for i=1 to n
2   for j=0 to n
3   k = i+j
4   print i,"+",j,"=",k
```

| Instrucción            | Costo | Tiempo |     | Variable | Costo | Espacio |
| ---------------------- | :---: | :----: | :-: | :------: | :---: | :-----: |
| `for i=1 to n`         |  C1   |        |     |   `i`    |  C1   |         |
| `for j=0 to n`         |  C2   |        |     |   `j`    |  C2   |         |
| `k = i+j`              |  C3   |        |     |   `k`    |  C3   |         |
| `print(i,"+",j,"=",k)` |  C4   |        |     |   `n`    |  C4   |         |

``` C
# Función2(n)
1 i = 1
2 do
3   for j=1 to n
4     print i,"x",j,"=",i*j
5   i++
6 while(i<=10)
```

| Instrucción              | Costo | Tiempo |     | Variable | Costo | Espacio |
| ------------------------ | :---: | :----: | :-: | :------: | :---: | :-----: |
| `i = 1`                  |  C1   |        |     |   `i`    |  C1   |         |
| `do`                     |  C2   |        |     |   `j`    |  C2   |         |
| `for j=1 to n`           |  C3   |        |     |   `n`    |  C3   |         |
| `print(i,"x",j,"=",i*j)` |  C4   |        |     |          |       |         |
| `i++`                    |  C5   |        |     |          |       |         |
| `while(i<=10)`           |  C6   |        |     |          |       |         |

``` C
# Función3(arreglo_a,arreglo_b,n)
1 i = 0
2 while(i<n)
3   j = n-1
4   while(j>=0)
5     if(j<=n/2)
6       break
7     j--
8   i++
```

| Instrucción   | Costo | Tiempo |     | Variable | Costo | Espacio |
| ------------- | :---: | :----: | :-: | :------: | :---: | :-----: |
| `i = 0`       |  C1   |   1    |     |   `i`    |  C1   |    1    |
| `while(i<n)`  |  C2   |  n+1   |     |   `j`    |  C2   |    1    |
| `j = n-1`     |  C3   |   n    |     |   `n`    |  C3   |    1    |
| `while(j>=0)` |  C4   | n-1/2  |     |          |       |         |
| `if(j<=n/2)`  |  C5   |        |     |          |       |         |
| `break`       |  C6   |        |     |          |       |         |
| `j--`         |  C7   |        |     |          |       |         |
| `i++`         |  C8   |        |     |          |       |         |

---
### TAREA 1

~~10 SEPTIEMBRE 2025~~
``` C
Algoritmo1(s[n],s2[n],n) 
1 i=n-1 
2 for j=0 to n-1 
3   s2[j]=s[i] 
4   i-- 
5   for k=0 to n-1 
6     s[k]=s2[k]
```

| Instrucción      | Costo | Tiempo |     | Variable | Costo | Espacio |
| ---------------- | :---: | :----: | :-: | :------: | :---: | :-----: |
| `i=n-1`          |  C1   |        |     |   `i`    |  C1   |    1    |
| `for j=0 to n-1` |  C2   |        |     |   `j`    |  C2   |    1    |
| `s2[j]=s[i]`     |  C3   |        |     |   `k`    |  C3   |    1    |
| `i--`            |  C4   |        |     |   `s2`   |  C4   |    n    |
| `for k=0 to n-1` |  C5   |        |     |   `s`    |  C5   |    n    |
| `s[k]=s2[k]`     |  C6   |        |     |   `n`    |  C6   |    1    |

``` C
# Algoritmo2(A[n][n],n) 
1 m=1 
2 j=1 
3 do 
4   m=m*A[j][j] 
5   j++ 
6 while(j<n)
```

| Instrucción   | Costo | Tiempo |     | Variable | Costo | Espacio |
| ------------- | :---: | :----: | :-: | :------: | :---: | :-----: |
| `m=1`         |  C1   |        |     |   `m`    |  C1   |    1    |
| `j=1`         |  C2   |        |     |   `j`    |  C2   |    1    |
| `do`          |  C3   |        |     |   `n`    |  C3   |    1    |
| `m=m*A[j][j]` |  C4   |        |     |   `A`    |  C4   |  $n^2$  |
| `j++`         |  C5   |        |     |          |       |         |
| `while(j<n)`  |  C6   |        |     |          |       |         |

``` C
# Algoritmo3(n) 
1 for j=1 to n-2 
2   i=1 
3   while(i<=15) 
4     m=i*j 
5     print i,"*",j,"=",m 
6     i++
```


| Instrucción           | Costo | Tiempo |     | Variable | Costo | Espacio |
| --------------------- | :---: | :----: | :-: | :------: | :---: | :-----: |
| `for j=1 to n-2`      |  C1   |        |     |   `i`    |  C1   |    1    |
| `i=1`                 |  C2   |        |     |   `j`    |  C2   |    1    |
| `while(i<=15)`        |  C3   |        |     |   `m`    |  C3   |    1    |
| `m=i*j`               |  C4   |        |     |   `n`    |  C4   |    1    |
| `print i,"*",j,"=",m` |  C5   |        |     |          |       |         |
| `i++`                 |  C6   |        |     |          |       |         |


``` C
# Algoritmo4(A[n],n) 
1 j=n-1 
2 m=0 
3 while(j>=1) 
4   m=m+A[j] 
5   j-=2
```

| Instrucción   | Costo | Tiempo |     | Variable | Costo | Espacio |
| ------------- | :---: | :----: | :-: | :------: | :---: | :-----: |
| `j=n-1`       |  C1   |        |     |   `j`    |  C1   |    1    |
| `m=0`         |  C2   |        |     |   `m`    |  C2   |    1    |
| `while(j>=1)` |  C3   |        |     |   `n`    |  C3   |    1    |
| `m=m+A[j]`    |  C4   |        |     |   `A`    |  C4   |    n    |
| `j-=2`        |  C5   |        |     |          |       |         |

``` C
# Algoritmo5(n) 
1 i=1 
2 while(i<n-1) 
3   for k=0 to n 
4     print i*k 
5   i++
```

| Instrucción    | Costo | Tiempo |     | Variable | Costo | Espacio |
| -------------- | :---: | :----: | :-: | :------: | :---: | :-----: |
| `i=1`          |  C1   |        |     |   `i`    |  C1   |    1    |
| `while(i<n-1)` |  C2   |        |     |   `k`    |  C2   |    1    |
| `for k=0 to n` |  C3   |        |     |   `n`    |  C3   |    1    |
| `print i*k`    |  C4   |        |     |          |       |         |
| `i++`          |  C5   |        |     |          |       |         |

``` C
# Algoritmo6(n) 
1 v=1 
2 while(n>3) 
3   v=v*n 
4   n--
```

| Instrucción  | Costo | Tiempo |     | Variable | Costo | Espacio |
| ------------ | :---: | :----: | :-: | :------: | :---: | :-----: |
| `v=1`        |  C1   |        |     |   `v`    |  C1   |    1    |
| `while(n>3)` |  C2   |        |     |   `n`    |  C2   |    1    |
| `v=v*n`      |  C3   |        |     |          |       |         |
| `n--`        |  C4   |        |     |          |       |         |

``` C
# Algoritmo7 (A[n][n],B[n][n],C[n][n],n) 
1 for i = 0 to n-1 
2   for j = 0 to n-1 
3     C[i][j] = 0 
4     for k = 0 to n-1 
5       C[i][j] = C[i][j] + A[i][k]*B[k][j]
```

| Instrucción                           | Costo | Tiempo |     | Variable | Costo | Espacio |
| ------------------------------------- | :---: | :----: | :-: | :------: | :---: | :-----: |
| `for i = 0 to n-1`                    |  C1   |        |     |   `i`    |  C1   |    1    |
| `for j = 0 to n-1`                    |  C2   |        |     |   `j`    |  C2   |    1    |
| `C[i][j] = 0`                         |  C3   |        |     |   `k`    |  C3   |    1    |
| `for k = 0 to n-1`                    |  C4   |        |     |   `n`    |  C4   |    1    |
| `C[i][j] = C[i][j] + A[i][k]*B[k][j]` |  C5   |        |     |   `C`    |  C5   |  $n^2$  |
|                                       |       |        |     |   `A`    |       |  $n^2$  |
|                                       |       |        |     |   `B`    |       |  $n^2$  |
