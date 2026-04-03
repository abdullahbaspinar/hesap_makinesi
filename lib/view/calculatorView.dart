import 'package:flutter/material.dart';
import 'package:hesap_makinesi/constants/app_colors.dart';
import 'package:hesap_makinesi/widgets/calculator_button.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  double displayText = 0;
  int firstnumber = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hesap Makinesi",
          style: TextStyle(color: AppColors.yaziRenk),
        ),
        backgroundColor: AppColors.arkaplan,
      ),
      backgroundColor: AppColors.arkaplan,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Text(
                      "$displayText",
                      style: TextStyle(
                        color: AppColors.yaziRenk,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CalculatorButton(
                          text: "Sil",
                          color: AppColors.yaziArkaPlan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: "C",
                          color: AppColors.buttonArkaplan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: "%",
                          color: AppColors.buttonArkaplan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: "/",
                          color: AppColors.buttonArkaplan,
                          onTap: () {},
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalculatorButton(
                          text: "7",
                          color: AppColors.yaziArkaPlan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: "8",
                          color: AppColors.yaziArkaPlan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: "9",
                          color: AppColors.yaziArkaPlan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: "x",
                          color: AppColors.buttonArkaplan,
                          onTap: () {},
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalculatorButton(
                          text: "6",
                          color: AppColors.yaziArkaPlan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: "5",
                          color: AppColors.yaziArkaPlan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: "4",
                          color: AppColors.yaziArkaPlan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: "-",
                          color: AppColors.buttonArkaplan,
                          onTap: () {},
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalculatorButton(
                          text: "1",
                          color: AppColors.yaziArkaPlan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: "2",
                          color: AppColors.yaziArkaPlan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: "3",
                          color: AppColors.yaziArkaPlan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: "+",
                          color: AppColors.buttonArkaplan,
                          onTap: () {},
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalculatorButton(
                          text: "+/-",
                          color: AppColors.yaziArkaPlan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: "0",
                          color: AppColors.yaziArkaPlan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: ",",
                          color: AppColors.yaziArkaPlan,
                          onTap: () {},
                        ),
                        CalculatorButton(
                          text: "=",
                          color: AppColors.buttonArkaplan,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
