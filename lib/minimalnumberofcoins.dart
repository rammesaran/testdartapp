void main() {
  int result = solution([1, 2, 20, 60, 120], 150);
  
}

int solution(List<int> coins, int price) {
  int result = 1;
  int total = 0;
 int finalResult =0;

  for (int i = coins.length - 1; (i <= coins.length && i >= 0); i--) {
    while (total < price) {
      int sum = coins[i] * result;
      total = sum;
      if(total<=price){
        result++;
      }
    }
  
   finalResult = finalResult + (result - 1);
    price = (price - ((result-1) * (coins[i])));
    total =0;
    result =1;


  }
  return finalResult;
}
