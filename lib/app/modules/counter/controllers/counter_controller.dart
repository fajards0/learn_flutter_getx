import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CounterController extends GetxController {
  // Observable variable
  var bilangan = 0.obs;

  // Method to increase the counter
  void tambahSatu(BuildContext context) {
    if (bilangan < 20) {
      bilangan++;
    } else {
      _showSnackBar(context, 'Tidak boleh lebih dari 20');
    }
  }

  // Method to decrease the counter
  void kurangSatu(BuildContext context) {
    if (bilangan > 0) {
      bilangan--;
    } else {
      _showSnackBar(context, 'Angka tidak bisa kurang dari 0');
    }
  }

  // Method to reset the counter
  void reset() {
    bilangan.value = 0;
  }

  // Private method to show a SnackBar at the top of the screen
  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        duration: Duration(seconds: 2),
        backgroundColor: Color.fromARGB(255, 128, 0, 0),
        elevation: 6.0,
      ),
    );
  }
}
