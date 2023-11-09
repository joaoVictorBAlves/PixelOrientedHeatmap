int[][] dataset = new int[10][25];

void setup(){
  size(500,500);
  runDataset();
  
  sortAndAgroupedColumns(dataset, false);
  drawWorld();
  
}

void draw(){

}

void runDataset(){
   for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 25; j++) {
      dataset[i][j] = int(random(3));
    }
  }
}

void showDataset(){
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 25; j++) {
      print(dataset[i][j] + " ");
    }
    println();
  }
}

void sortDatasetLines(int[][] dataset, boolean ascending){
  for (int i = 0; i < dataset.length; i++) {
    for (int j = 0; j < dataset[i].length-1; j++) {
      for (int k = 0; k < dataset[i].length-j-1; k++) {
        if(ascending){
          if (dataset[i][k] > dataset[i][k+1]) {
            int temp = dataset[i][k];
            dataset[i][k] = dataset[i][k+1];
            dataset[i][k+1] = temp;
          }
        }else{
          if (dataset[i][k] < dataset[i][k+1]) {
            int temp = dataset[i][k];
            dataset[i][k] = dataset[i][k+1];
            dataset[i][k+1] = temp;
          }
        }
        
      }
    }
  }
}

void sortDatasetColumns(int[][] dataset, boolean ascending){
  for (int j = 0; j < dataset[0].length; j++) {
    for (int i = 0; i < dataset.length-1; i++) {
      for (int k = 0; k < dataset.length-i-1; k++) {
        if(ascending){
          if (dataset[k][j] > dataset[k+1][j]) {
            int temp = dataset[k][j];
            dataset[k][j] = dataset[k+1][j];
            dataset[k+1][j] = temp;
          }
        }else{
          if (dataset[k][j] < dataset[k+1][j]) {
            int temp = dataset[k][j];
            dataset[k][j] = dataset[k+1][j];
            dataset[k+1][j] = temp;
          }
        }
      }
    }
  }
}

void sortMatrixVertical(int[][] matrix, int factor){
    // Contar a quantidade do fator em cada linha
    int[] count = new int[matrix.length];
    for (int i = 0; i < matrix.length; i++) {
        for (int j = 0; j < matrix[i].length; j++) {
            if (matrix[i][j] == factor) {
                count[i]++;
            }
        }
    }

    // Ordenar a matriz com base na contagem
    for (int i = 0; i < matrix.length - 1; i++) {
        for (int j = 0; j < matrix.length - i - 1; j++) {
            if (count[j] > count[j+1]) {
                int[] temp = matrix[j];
                matrix[j] = matrix[j+1];
                matrix[j+1] = temp;
                int tempCount = count[j];
                count[j] = count[j+1];
                count[j+1] = tempCount;
            }
        }
    }
}

void sortMatrixHorizontal(int[][] matrix, int factor){
    // Contar a quantidade do fator em cada coluna
    int[] count = new int[matrix[0].length];
    for (int j = 0; j < matrix[0].length; j++) {
        for (int i = 0; i < matrix.length; i++) {
            if (matrix[i][j] == factor) {
                count[j]++;
            }
        }
    }

    // Ordenar a matriz com base na contagem
    for (int i = 0; i < matrix[0].length - 1; i++) {
        for (int j = 0; j < matrix[0].length - i - 1; j++) {
            if (count[j] > count[j+1]) {
                for (int k = 0; k < matrix.length; k++) {
                    int temp = matrix[k][j];
                    matrix[k][j] = matrix[k][j+1];
                    matrix[k][j+1] = temp;
                }
                int tempCount = count[j];
                count[j] = count[j+1];
                count[j+1] = tempCount;
            }
        }
    }
}

void sortAndAgroupedLines(int[][] dataset, boolean best){
  if(best){
    sortDatasetLines(dataset, false);
    sortMatrixVertical(dataset, 0);
    sortMatrixVertical(dataset, 1);
    sortMatrixVertical(dataset, 2);
  }else{
    sortDatasetLines(dataset, true);
    sortMatrixVertical(dataset, 2);
    sortMatrixVertical(dataset, 1);
    sortMatrixVertical(dataset, 0);
  }
}

void sortAndAgroupedColumns(int[][] dataset,  boolean best){
 if(best){
    sortDatasetColumns(dataset, false);
    sortMatrixHorizontal(dataset, 0);
    sortMatrixHorizontal(dataset, 1);
    sortMatrixHorizontal(dataset, 2);
  }else{
    sortDatasetColumns(dataset, true);
    sortMatrixHorizontal(dataset, 2);
    sortMatrixHorizontal(dataset, 1);
    sortMatrixHorizontal(dataset, 0);
  }
}

void drawWorld(){
  float w = width / dataset[0].length;
  float h = height / dataset.length;
  
  for (int i = 0; i < dataset.length; i++) {
    for (int j = 0; j < dataset[i].length; j++) {
      float x = j * w;
      float y = i * h;
      
      if (dataset[i][j] == 0) {
        fill(255, 0, 0); // Vermelho
      } else if (dataset[i][j] == 1) {
        fill(255, 255, 0); // Amarelo
      } else if (dataset[i][j] == 2) {
        fill(0, 255, 0); // Verde
      }
      
      rect(x, y, w, h);
    }
  }
}
