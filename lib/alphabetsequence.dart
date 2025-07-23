void main(){
bool response = solution("bxz");
print(response);
}

bool solution(String s) {

  List<String> alphabets = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];

List<int> indexAdded = [];
  for(int i=0; i<s.length; i++){
   int index = alphabets.indexOf(s[i]);
   indexAdded.add(index);



  }

  for(int j=0; j<indexAdded.length-1; j++){

if(indexAdded[j] < indexAdded[j+1]){
}else{
 return false;
}

  }

return true;

}