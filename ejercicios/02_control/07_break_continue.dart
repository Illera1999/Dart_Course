void main(List<String> args) {
  
  for(int i = 0; i < 10; i++){
    if(i == 5){
      continue;
    }
    if(i == 7){
      break;
    }
    print('Hola Mundo $i');
  }

  
}