import 'dart:io';

void main() {
  bool orderAgain = true;

  while (orderAgain) {
    print('\n===== PIZZA ORDER SYSTEM =====');
    print('Small Pizza  - USD 5');
    print('Medium Pizza - USD 7');
    print('Large Pizza  - USD 10');

    stdout.write('\nEnter pizza size (Small/Medium/Large): ');
    String size = (stdin.readLineSync() ?? '').trim().toLowerCase();

    int price = 0;

    switch (size) {
      case 'small':
        price = 5;
        break;
      case 'medium':
        price = 7;
        break;
      case 'large':
        price = 10;
        break;
      default:
        print('Invalid pizza size. Please try again.');
        continue;
    }

    stdout.write('Enter quantity: ');
    int? quantity = int.tryParse(stdin.readLineSync() ?? '');

    if (quantity == null || quantity <= 0) {
      print('Invalid quantity. Enter a positive number.');
      continue;
    }

    int total = price * quantity;

    print('\nPizza size: ${size[0].toUpperCase()}${size.substring(1)}');
    print('Quantity: $quantity');
    print('Total payment: USD $total');

    stdout.write('\nWould you like to order again? (yes/no): ');
    String answer = (stdin.readLineSync() ?? '').trim().toLowerCase();

    if (answer != 'yes') {
      orderAgain = false;
    }
  }

  print('\nThank you for using the Pizza Order System!');
}