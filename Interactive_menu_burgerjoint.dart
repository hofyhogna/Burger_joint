import 'dart:io';

class MenuItem {
  String name;
  double price;
  List<String> condiments;

  MenuItem(this.name, this.price, this.condiments);
}

void main() {
  List<MenuItem> menu = [
    MenuItem("Mushroom furger Classic", 5.99, ["Lettuce", "Tomato", "Onion", "Pickles"]),
    MenuItem("Mario-Mushroom cheesefurger", 6.99, ["Cheese", "Lettuce", "Tomato", "Onion"]),
    MenuItem("Louigi-Mushroom furger with facon ", 7.99, ["Facon", "Cheese", "Lettuce", "Tomato"]),
    MenuItem("Prinsesse Peaches fries", 2.99, ["Special -Bowser sause", "Toad Mayo"]),
    MenuItem("Sweet-tea", 1.99,["With Ice"]),
    MenuItem("CocaCola", 1.99,["With Ice"]),
  ];

  List<MenuItem> order = [];

  while (true) {
    print("\nWelcome to the Mushroom Kingdome");
    print("Menu:");
    for (var i = 0; i < menu.length; i++) {
      print("${i + 1}. ${menu[i].name} - \$${menu[i].price}");
    }
    print("Enter the number of the burger, side or drink to add to order, or '0' to finish:");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 0) break;
    if (choice > 0 && choice <= menu.length) {
      MenuItem selected = MenuItem(menu[choice - 1].name, menu[choice - 1].price, List.from(menu[choice - 1].condiments));
      modifyCondiments(selected);
      order.add(selected);
    }
  }

  displayOrder(order);
}

void modifyCondiments(MenuItem item) {
  while (true) {
    print("\n${item.name} selected. Current condiments: ${item.condiments.join(', ')}");
    print("Would you like to: (1) Remove a condiment (2) Add a condiment (3) Continue");
    int action = int.parse(stdin.readLineSync()!);

    if (action == 1) {
      print("Which condiment would you like to remove?");
      for (var i = 0; i < item.condiments.length; i++) {
        print("${i + 1}. ${item.condiments[i]}");
      }
      int removeIndex = int.parse(stdin.readLineSync()!) - 1;
      if (removeIndex >= 0 && removeIndex < item.condiments.length) {
        item.condiments.removeAt(removeIndex);
      }
    } else if (action == 2) {
      print("Enter the name of the condiment to add:");
      String newCondiment = stdin.readLineSync()!;
      item.condiments.add(newCondiment);
    } else {
      break;
    }
  }
}

void displayOrder(List<MenuItem> order) {
  double total = 0;
  print("\nYou have ordered:");
  for (var item in order) {
    print("- ${item.name} (\$${item.price}): ${item.condiments.join(', ')}");
    total += item.price;
  }
  print("Your total comes to: \$${total.toStringAsFixed(2)}");
  print("Thank you for visiting the Mushroom Kingdome!");
}
