import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/constants/colors.dart';

/// Chached Image widget
class CustomChachedImage extends StatelessWidget {
  /// Chached image
  const CustomChachedImage({
    required this.imageUrl,
    required this.height,
    super.key,
  });

  /// Image Url
  final String imageUrl;

  /// Desired height of the image
  final double height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: double.infinity,
      height: height,
      placeholderFadeInDuration: const Duration(milliseconds: 800),
      fadeInDuration: const Duration(milliseconds: 700),
      fadeOutDuration: const Duration(milliseconds: 500),
      placeholder: (context, url) => Align(
        alignment: Alignment.topCenter,
        child: LinearProgressIndicator(
          minHeight: 10,
          color: AppColors.teal,
          backgroundColor: AppColors.teal.withOpacity(0.3),
        ),
      ),
      fit: BoxFit.cover,
    );
  }
}
