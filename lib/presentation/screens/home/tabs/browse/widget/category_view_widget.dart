import 'package:flutter/material.dart';
import 'package:movies/core/utils/assets_manager.dart';

class CategoryViewWidget extends StatelessWidget {
  const CategoryViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            AssetsManager.movie,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        const Text(
          'Action', // Replace with dynamic category names
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
