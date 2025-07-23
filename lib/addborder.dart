void main(){
  List<String> result = solutions(["wzy**"]
);
  print(result);
}


List<String> solutions(List<String> picture) {
  List<String> res = [];
  List<int> leghth =[];
int maxleght =0;

for (var item in picture) {
leghth.add(item.length);
}
maxleght = (leghth.reduce((curr, next) =>  curr > next? curr: next))+2;

 res.add('*'*maxleght);
for(int i=0; i<picture.length;i++){
   

    res.add('*${picture[i]}*');
  
}
 res.add('*'*maxleght);

return res;

}