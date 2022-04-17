import 'package:flutter/material.dart';
import 'package:netflixapp/core/constant.dart';
import 'package:netflixapp/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflixapp/presentation/widgets/vedeo_widget.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        khieght,
        const Text(
          'Freinds',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        khieght,
        const Text(
          'Writers write descriptive paragraphs because their purpose is to describe something.\n Their point is that something is beautiful or disgusting or strangely intriguing. Writers write persuasive and argument paragraphs because their purpose is to persuade or convince someone.\n Their point is that their reader should see things a particular way and possibly take action on that new way of seeing things. Writers write paragraphs of comparison because the comparison will make their point clear to their readers.',
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        const SizedBox(
          height: 30,
        ),
        VedeoWidget(
          url:
              "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202107/KGF-647x363.jpeg?0n7lFSoZP63T_VGoHMpIkMtOu9s6Jq_Z",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
                textSize: 16, iconSize: 25, title: "share", icon: Icons.share),
            kwidth,
            CustomButtonWidget(
                textSize: 16, iconSize: 25, title: "My List", icon: Icons.add),
            kwidth,
            CustomButtonWidget(
                textSize: 16,
                iconSize: 25,
                title: "Play",
                icon: Icons.play_arrow),
            kwidth
          ],
        )
      ],
    );
  }
}
