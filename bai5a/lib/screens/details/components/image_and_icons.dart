import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAnsIcons extends StatelessWidget {
  const ImageAnsIcons({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? _buildPortraitContent(context)
                : _buildLandscapeContent(context);
          },
        ),
      ),
    );
  }

  Widget _buildPortraitContent(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding * 5,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                  ),
                ),
                const Spacer(),
                const IconCard(icon: "assets/icons/sun.svg"),
                const IconCard(icon: "assets/icons/icon_2.svg"),
                const IconCard(icon: "assets/icons/icon_3.svg"),
                const IconCard(icon: "assets/icons/icon_4.svg"),
              ],
            ),
          ),
        ),
        Container(
          height: size.height * 0.8,
          width: size.width * 0.75,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(63.0),
              bottomLeft: Radius.circular(63.0),
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, -10),
                blurRadius: 60,
                color: kPrimaryColor.withOpacity(0.29),
              ),
            ],
            image: const DecorationImage(
              alignment: Alignment.topLeft,
              fit: BoxFit.cover,
              image: AssetImage("assets/images/img.png"),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLandscapeContent(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding * 0,
            ),
            child: Column(
              children: [
                Spacer(),
                IconCard(icon: "assets/icons/sun.svg"),
                IconCard(icon: "assets/icons/icon_2.svg"),
                IconCard(icon: "assets/icons/icon_3.svg"),
                IconCard(icon: "assets/icons/icon_4.svg"),
              ],
            ),
          ),
        ),
        Container(
          height: size.height * 0.8,
          width: size.width * 0.75,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(63.0),
              bottomLeft: Radius.circular(63.0),
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, -10),
                blurRadius: 60,
                color: kPrimaryColor.withOpacity(0.29),
              ),
            ],
            image: const DecorationImage(
              alignment: Alignment.topLeft,
              fit: BoxFit.cover,
              image: AssetImage("assets/images/img.png"),
            ),
          ),
        ),
      ],
    );
  }
}
