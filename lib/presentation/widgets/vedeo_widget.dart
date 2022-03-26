import 'package:flutter/material.dart';

class VedeoWidget extends StatelessWidget {
  const VedeoWidget({
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
