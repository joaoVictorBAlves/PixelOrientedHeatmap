# Pixel-Oriented Visualization Techniques

![image](https://github.com/joaoVictorBAlves/PixelOrientedHeatmap/assets/86852231/48efd5c5-0ec7-4840-a13e-43e0e2bea608)
![image](https://github.com/joaoVictorBAlves/PixelOrientedHeatmap/assets/86852231/3205402e-5545-49b6-8d3b-e1e66f2b869f)


Este código é baseado em técnicas de visualização orientadas a pixels, conforme descritas no artigo "Designing Pixel-Oriented Visualization Techniques: Theory and Applications" por Daniel A. Keim.

O artigo original pode ser encontrado [aqui](https://ieeexplore.ieee.org/document/841121).

## Descrição

Este projeto consiste em um conjunto de funções em Java que permitem a manipulação e visualização de dados em uma matriz. O código inclui funcionalidades para criar um dataset aleatório, ordenar linhas e colunas, e aplicar técnicas de visualização de dados orientadas a pixels.

## Funcionalidades

- `runDataset()`: Inicializa o dataset com valores aleatórios entre 0, 1 e 2.
- `sortDatasetLines()`: Ordena as linhas do dataset, permitindo ordenação ascendente ou descendente.
- `sortDatasetColumns()`: Ordena as colunas do dataset, permitindo ordenação ascendente ou descendente.
- `sortMatrixVertical()`: Ordena a matriz com base na contagem de um fator na vertical.
- `sortMatrixHorizontal()`: Ordena a matriz com base na contagem de um fator na horizontal.
- `sortAndAgroupedLines()`: Ordena e agrupa as linhas do dataset, utilizando a melhor ou pior ordem.
- `sortAndAgroupedColumns()`: Ordena e agrupa as colunas do dataset, utilizando a melhor ou pior ordem.

## Como Usar

1. Certifique-se de ter o ambiente Java configurado em seu sistema.
2. Execute o código em um ambiente Java compatível.
3. A saída será uma visualização do dataset ordenado na tela.

## Inspirado por

Este projeto é inspirado no artigo de Daniel A. Keim e é desenvolvido para testar a técnica descrita no artigo.

## Referências

- Artigo Original: [Designing Pixel-Oriented Visualization Techniques: Theory and Applications](https://ieeexplore.ieee.org/document/841121)

