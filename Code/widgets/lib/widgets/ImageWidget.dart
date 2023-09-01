//Image.Network, Image.Asset, NetworkImage, AssetImage
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  ImageWidget({super.key});

  String errorMessage = "Unable to load Image";
  String assetUrl = "assets/images/image.jpg";
  String networkUrl =
      "https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg";

  imageAsset() {
    return Image.asset(
      assetUrl,
      // height: 100,
      // width: 200,
      repeat: ImageRepeat.repeat,
      // fit: BoxFit.fill,
      errorBuilder: (context, error, stackTrace) {
        return Text(errorMessage);
      },
    );
  }

  imageNetwork() {
    return Image.network(
      networkUrl, loadingBuilder:
        (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
      if (loadingProgress == null) return child;
      return Center(
        child: CircularProgressIndicator(
          value: loadingProgress.expectedTotalBytes != null
              ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes!
              : null,
        ),
      );
    });
  }

  assetImage() {
    return Image(image: AssetImage(assetUrl));
  }

  networkImage() {
    return Image(image: NetworkImage(networkUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          // height: 500,
          child: imageNetwork(),
        ),
      ),
    );
  }
}
