---
cssclasses:
  - HWK
---
--- 

~~02 SEPTIEMBRE 2025~~ __COMPLEJIDAD__
Calcular la complejidad temporal y espacial de los siguientes Algoritmos
``` c
# Promedio(numeros,n)
1	suma = 0
2	for i=0 to n-1
3		suma+=numeros[i]
4	prom = suma/n		
```

| Instrucción        | Costo | Tiempo |     | Variable    | Costo | Espacio |
| ------------------ | ----- | ------ | --- | ----------- | ----- | ------- |
| `suma = 0`         | C1    | 1      |     | `suma`      | C1    | 1       |
| `for i=0 to n-1`   | C2    | n+1    |     | `i`         | C2    | 1       |
| `suma+=numeros[i]` | C3    | n      |     | `n`         | C3    | 1       |
| `prom = suma/n`    | C4    | 1      |     | `numeros[]` | C4    | n       |
|                    |       |        |     | `prom`      | C5    | 1       |
``` C
# Funcion1(n)
1	i = 0
2	while(i<n)
3		if(i==⌊n/2⌋)
4			break
5		i++
```

| Instrucción    | Costo | Tiempo |     | Variable | Costo | Espacio |
| -------------- | ----- | ------ | --- | -------- | ----- | ------- |
| `i = 0`        | C1    | 1      |     | `i`      | C1    | 1       |
| `while (i<n)`  | C2    | n+1    |     | `n`      | C2    | 1       |
| `if(i==⌊n/2⌋)` | C3    | n      |     |          |       |         |
| `break`        | C4    | 1      |     |          |       |         |
| `i++`          | C5    | n      |     |          |       |         |

``` C
# Funcion2(n)
1	i = 1
2	do
3		print i
4		i+=3
5	while(i<=n)
```

| Instrucción   | Costo | Tiempo    |     | Variable | Costo | Espacio |
| ------------- | ----- | --------- | --- | -------- | ----- | ------- |
| `i = 1`       | C1    | 1         |     | `i`      | C1    | 1       |
| `do`          | C2    | ⌊(n+2)/3⌋ |     | `n`      | C2    | 1       |
| `print i`     | C3    | ⌊(n+2)/3⌋ |     |          |       |         |
| `i+=3`        | C4    | ⌊(n+2)/3⌋ |     |          |       |         |
| `while(i<=n)` | C5    | ⌊(n+2)/3⌋ |     |          |       |         |



