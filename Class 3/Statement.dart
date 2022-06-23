void main() {
  
 //check number are equal or not 
  int number1=15;
  int number2=15;
  if(number1==number2){
    print("Number are equal");
  }
  else{
    print("Number are not equal");
  }
  (number1==number2)? print("equal"):print("Not equal");
 
  //even odd check
  
  int number=15;
  if(number%2==0){
    print("Number is even");
  }
  else{
    print("Number is odd");
  }
  (number%2==0)? print("Even"):print("Odd");
  
  // LeapYear count
  
  int year=2022;
  if(year%400==0){
    print("Year is LeapYear");
  }
  else if(year%100==0){
    print("Year is not Leap Year");
  }
  else if(year%4==0){
    print("Year is LeapYear");
  }
  else{
    print("Year is not LeapYear");
  }
}
