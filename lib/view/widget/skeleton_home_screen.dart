import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;

  const SkeletonContainer({
    Key? key,
    this.width,
    this.height,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
      ),
    );
  }
}

// Skeleton cho Banner
class BannerSkeleton extends StatelessWidget {
  const BannerSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: SkeletonContainer(
            height: 180,
            width: double.infinity,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              child: const SkeletonContainer(
                width: 8,
                height: 8,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Skeleton cho New Books (horizontal list)
class NewBooksSkeleton extends StatelessWidget {
  const NewBooksSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 6),
            padding: const EdgeInsets.all(6),
            width: 110,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonContainer(
                  width: 98,
                  height: 120,
                  borderRadius: BorderRadius.circular(8),
                ),
                const SizedBox(height: 6),
                const SkeletonContainer(
                  width: 98,
                  height: 12,
                ),
                const SizedBox(height: 4),
                const SkeletonContainer(
                  width: 70,
                  height: 10,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// Skeleton cho Trending Books (horizontal cards)
class TrendingBooksSkeleton extends StatelessWidget {
  const TrendingBooksSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFE3F2FD),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(14),
              width: 340,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonContainer(
                    width: 85,
                    height: 120,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  const SizedBox(width: 14),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SkeletonContainer(
                              width: double.infinity,
                              height: 16,
                            ),
                            SizedBox(height: 6),
                            SkeletonContainer(
                              width: 100,
                              height: 13,
                            ),
                            SizedBox(height: 10),
                            SkeletonContainer(
                              width: 80,
                              height: 14,
                            ),
                          ],
                        ),
                        SkeletonContainer(
                          width: 100,
                          height: 14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
