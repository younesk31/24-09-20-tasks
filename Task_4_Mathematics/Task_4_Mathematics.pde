import java.util.Random;
int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };

void setup() {
  println("Task 4.a -->");
  divider(5);               // Task 4.a
  println("Task 4.c -->");
  etStykRandomArray(arr);   // Task 4.c
  println("Task 4.d -->");
  minusEn(10);              // Task 4.d
  println("Task 4.e -->");
  fibunacci(1, 1);          // Task 4.e
}

void divider(int a) {
  for (int i = 0; i <= 100; ++i) {
    if (i % a == 0) {
      print(i+" ");
    }
  }
  println("");
}

int[] etStykRandomArray(int[] array) {
  Random rand = new Random();
  for (int i = 0; i < array.length; ++i) {
    int randomPosition = rand.nextInt(array.length);
    int temp = array[i];
    array[i] = array[randomPosition];
    array[randomPosition] = temp;
  }
  printArray(array);
  return array;
}

int minusEn(int d) {
  if (d == 0) return 0; // for at forhindre stackoverflow :(
  print(d+" ");
  println(" ");
  
  return minusEn(d - 1);
}

void fibunacci(int a, int b) {
  println("________________");
  int d = a + b;
  if (d < 10000) {
    println(a+"   +   "+b);
    println("= "+d);
    a = b;
    b = d;
    fibunacci(a,b);
  }
}
