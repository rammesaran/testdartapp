
void main(){
List<int> response =  solution(44);
print(response);
}


List<int> solution(int legs){

List<int> response = [];

int lastNumber = legs~/2;
response.add(lastNumber);
while(lastNumber>1){
 int nextnumber =  lastNumber -2; 
 response.add(nextnumber);
 lastNumber = nextnumber;
}
response.sort();
return response;
}