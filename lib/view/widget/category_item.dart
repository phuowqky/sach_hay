import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sach_hay/core/theme/app_colors.dart';
import 'package:sach_hay/core/theme/app_sizes.dart';
import 'package:sach_hay/core/theme/app_text_styles.dart';

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final String? route;
  const CategoryItem({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
    this.route,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
              () {
            if (route != null) {
              context.push(route!);
            }
          },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: AppColors.grey100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.primaryLight, size: 28),
            SizedBox(height: AppSizes.space8),
            Text(label,
                style: AppTextStyles.bodySmall
                    .copyWith(color: AppColors.primaryLight)),
          ],
        ),
      ),
    );
  }
}