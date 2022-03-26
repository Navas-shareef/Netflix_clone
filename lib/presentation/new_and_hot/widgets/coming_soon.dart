import 'package:flutter/material.dart';
import 'package:netflixapp/core/constant.dart';
import 'package:netflixapp/presentation/home/widgets/custom_button_widget.dart';

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
              const VedioWidget(),
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

class VedioWidget extends StatelessWidget {
  const VedioWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202107/KGF-647x363.jpeg?0n7lFSoZP63T_VGoHMpIkMtOu9s6Jq_Z",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            radius: 22,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      size: 20,
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
