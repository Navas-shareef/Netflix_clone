import 'package:flutter/material.dart';
import 'package:netflixapp/core/constant.dart';
import 'package:netflixapp/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflixapp/presentation/widgets/vedeo_widget.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 50,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'FEB',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '11',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VedeoWidget(),
              Row(
                children: const [
                  Text(
                    'TallGirl 2',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  CustomButtonWidget(
                      textSize: 15,
                      iconSize: 20,
                      title: "Remind me",
                      icon: Icons.notifications_active_outlined),
                  Spacer(),
                  CustomButtonWidget(
                      textSize: 15,
                      iconSize: 20,
                      title: "info",
                      icon: Icons.info_outline),
                  Spacer()
                ],
              ),
              khieght,
              const Text(
                'Coming on Friday',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              khieght,
              const Text(
                'Tall Girl 2',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              khieght,
              const Text(
                'Landing in the lead musical kkkkkkkkkkkkkkkkkkkkkkkkkkkkal sllllllll afjv safkjsfldkfls; ifsdfjiowkflsjsdlkmsaoifnfwrjfi',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
