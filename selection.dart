class Sort {
  List<int> insertion(List<int> numbers){
    int aux, min;

    for(int i = 0; i < numbers.length; i++){
      min = i;

      for(int j = i + i; j < numbers.length; j++){
        if(numbers[j] < numbers[min]){
          min = j;
        }
      }
      aux = numbers[i];
      numbers[i] = numbers[min];
      numbers[min] = aux;
    }
    return numbers;
  }
}

void main(){
  Sort sort = Sort();
  List<int> numbers = [10,9,8,7,6,5,4,3,2,1];
  print(sort.insertion(numbers));
}