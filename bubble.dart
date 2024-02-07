// its a basic sorting algorithm. it works cheking every element of the list that it will be sorting with the next, 
//changing the position if they are in incorrect order. is necessary to review for many times all the list to it not needed 
//more changes, it means the list is sorted.

class Sort {
  List<int> bubbleSort(List<int> numbers){
    int aux;
    for(int i = 0; i < numbers.length - 1; i++){
      for(int j = 0; j < numbers.length - i - 1; j++){
        if( numbers[j] > numbers[j+1] ){
          // print('i:$i j:$j number[j]:${numbers[j]}');
          aux = numbers[j];
          numbers[j] = numbers[j+1];
          numbers[j+1] = aux;
        }
        // print(numbers[j]);
      }
    }
    // Ascending
    print('Ascending');
    for(int i = 0; i < numbers.length; i++){
      print(numbers[i]);
    }
    // Descending
    print('Descending');
    for(int i = numbers.length - 1; i >= 0; i-- ){
      print(numbers[i]);
    }
    return numbers;
  }
}

void main(){
  Sort sort = Sort();
  List<int>numbers = [5,4,3,2,1];
  print(sort.bubbleSort(numbers));
}