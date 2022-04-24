import 'package:bitm24restuarent/models/food.dart';
import 'package:bitm24restuarent/models/restaurant.dart';

class Order {
  final Restaurant? restaurant;
  final Food? food;
  final String? date;
  final int? quantity;

  Order({
    this.date,
    this.restaurant,
    this.food,
    this.quantity,
  });
}
