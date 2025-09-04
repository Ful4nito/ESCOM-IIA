---
cssclasses:
  - HWK
---
--- 
## Complejidad Temporal y Espacial

~~02 SEPTIEMBRE 2025~~
``` c
# Promedio(numeros,n)
1	suma = 0
2	for i=0 to n-1
3		suma+=numeros[i]
4	prom = suma/n		
```

| Instrucción        | Costo | Tiempo | Corregido |     | Variable    | Costo | Espacio |
| ------------------ | ----- | ------ | --------- | --- | ----------- | ----- | ------- |
| `suma = 0`         | C1    | 1      |           |     | `suma`      | C1    | 1       |
| `for i=0 to n-1`   | C2    | n+1    |           |     | `i`         | C2    | 1       |
| `suma+=numeros[i]` | C3    | n      |           |     | `n`         | C3    | 1       |
| `prom = suma/n`    | C4    | 1      |           |     | `numeros[]` | C4    | n       |
|                    |       |        |           |     | `prom`      | C5    | 1       |
``` C
# Funcion1(n)
1	i = 0
2	while(i<n)
3		if(i==⌊n/2⌋)
4			break
5		i++
```

| Instrucción    | Costo | Tiempo  | Corregido |     | Variable | Costo | Espacio |
| -------------- | :---: | ------- | --------- | --- | :------: | :---: | :-----: |
| `i = 0`        |  C1   | 1       |           |     |   `i`    |  C1   |    1    |
| `while (i<n)`  |  C2   | n+1     | ⌊n/2⌋+1   |     |   `n`    |  C2   |    1    |
| `if(i==⌊n/2⌋)` |  C3   | ⌊n/2⌋+1 |           |     |          |       |         |
| `break`        |  C4   | 1       |           |     |          |       |         |
| `i++`          |  C5   | ⌊n/2⌋   |           |     |          |       |         |

``` C
# Funcion2(n)
1 i = 1
2	do
3		print i
4		i+=3
5	while(i<=n)
```

| Instrucción   | Costo | Tiempo    | Corregido |     | Variable | Costo | Espacio |
| ------------- | ----- | --------- | --------- | --- | -------- | ----- | ------- |
| `i = 1`       | C1    | 1         |           |     | `i`      | C1    | 1       |
| `do`          | C2    | ⌊(n+2)/3⌋ |           |     | `n`      | C2    | 1       |
| `print i`     | C3    | ⌊(n+2)/3⌋ |           |     |          |       |         |
| `i+=3`        | C4    | ⌊(n+2)/3⌋ |           |     |          |       |         |
| `while(i<=n)` | C5    | ⌊(n+2)/3⌋ |           |     |          |       |         |


~~04 SEPTIEMBRE 2025~~
``` C
# Funcion(n)
1 for i=1 to n
2   for j=0 to n
3   k = i+j
4   print i,"+",j,"=",k
```


| Instrucción | Costo | Tiempo | Corregido |     | Variable | Costo | Espacio |
| ----------- | ----- | ------ | --------- | --- | -------- | ----- | ------- |
|             |       |        |           |     |          |       |         |
|             |       |        |           |     |          |       |         |
|             |       |        |           |     |          |       |         |
|             |       |        |           |     |          |       |         |


``` C
# Función(n)
1 i = 1
2 do
3   for j=1 to n
4     print i,"x",j,"=",i*j
5   i++
6 while(i<=10)
```


| Instrucción | Costo | Tiempo | Corregido |     | Variable | Costo | Espacio |
| ----------- | ----- | ------ | --------- | --- | -------- | ----- | ------- |
|             |       |        |           |     |          |       |         |
|             |       |        |           |     |          |       |         |
|             |       |        |           |     |          |       |         |
|             |       |        |           |     |          |       |         |


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