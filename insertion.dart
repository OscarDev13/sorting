

class Sort {
  List<int> insertion(List<int> numbers){
    int pos, aux;
    for (int i = 0; i < numbers.length; i++){
      pos = i;
      aux = numbers[i];
      while ((pos > 0) && (numbers[pos -1] > aux)) {
        numbers[pos] = numbers[pos - 1];
        pos--;
      }
      numbers[pos] = aux;
    }
    return numbers;
  }
}

void main(){
  Sort sort = Sort();
  List<int> numbers = [5,5,4,3,2,1];
  print(sort.insertion(numbers));
}