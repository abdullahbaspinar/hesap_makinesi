import 'package:flutter/material.dart';
import 'package:hesap_makinesi/constants/app_colors.dart';

class CalculatorButton extends StatelessWidget {
 

  final String text;
  final Color color;
  final VoidCallback onTap;

   CalculatorButton({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
     double height = MediaQuery.of(context).size.height;

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width * 0.15,
          height: width *0.15,
          margin: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 24, color: AppColors.yaziRenk),
            ),
          ),
        ),
      ),
    );
  }
}
