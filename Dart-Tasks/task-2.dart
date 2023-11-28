void main() {
  final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];

  print("Maximum number: ${findMaximum(numbers)}");
  print("Minimum number: ${findMinimum(numbers)}");
  print("Sum of all numbers: ${calculateSum(numbers)}");
  print("Average of all numbers: ${calculateAverage(numbers)}");
}

int findMaximum(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception("The list is empty");
  }

  int maxNumber = numbers[0];

  for (int number in numbers) {
    if (number > maxNumber) {
      maxNumber = number;
    }
  }

  return maxNumber;
}

int findMinimum(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception("The list is empty");
  }

  int minNumber = numbers[0];

  for (int number in numbers) {
    if (number < minNumber) {
      minNumber = number;
    }
  }

  return minNumber;
}

int calculateSum(List<int> numbers) {
  int sum = 0;

  for (int number in numbers) {
    sum += number;
  }

  return sum;
}

double calculateAverage(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception("The list is empty");
  }

  int sum = calculateSum(numbers);
  return sum / numbers.length;
}
