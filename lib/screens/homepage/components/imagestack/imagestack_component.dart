import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  final List<String> images;
  const ImageStack({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32 * 4,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                foregroundImage:
                    AssetImage(images[0]), // Provide your custom image
              ),
            ),
          ),
          PositionedDirectional(
            start: 22,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                foregroundImage:
                    AssetImage(images[1]), // Provide your custom image
              ),
            ),
          ),
          PositionedDirectional(
            start: 44,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                foregroundImage:
                    AssetImage(images[2]), // Provide your custom image
              ),
            ),
          ),
          PositionedDirectional(
            end: 22,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                foregroundImage:
                    AssetImage(images[3]), // Provide your custom image
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                foregroundImage:
                    AssetImage(images[4]), // Provide your custom image
              ),
            ),
          ),
        ],
      ),
    );
  }
}
