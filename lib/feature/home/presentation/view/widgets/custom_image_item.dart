import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImageItem extends StatelessWidget {
  final String imageUrl; // Corrected variable name
  const CustomImageItem({required this.imageUrl}); // Corrected variable name

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5 / 2.2,
      child: CachedNetworkImage(
        imageUrl: imageUrl, // Corrected variable name
        placeholder: (context, url) =>
            Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
