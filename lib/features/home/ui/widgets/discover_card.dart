import 'package:flutter/material.dart';
import 'package:reset_app/core/helpers/spacing.dart';
import 'package:reset_app/core/theming/colors.dart';
import 'package:reset_app/core/theming/styles.dart';

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({
    super.key,
    required this.image,
    required this.rate,
    required this.rateCount,
    required this.location,
    required this.price,
    required this.title,
    required this.isFavorite,
    required this.onToggleFavorite,
  });
  final String image, rate, rateCount, location, price, title;
  final bool isFavorite;
  final VoidCallback onToggleFavorite;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsetsDirectional.only(end: 15),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 130,
                ),
              ),
              PositionedDirectional(
                end: 10,
                top: 15,
                child: GestureDetector(
                  onTap: onToggleFavorite,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: ColorsManager.yellow,
                    ),
                  ),
                ),
              )
            ],
          ),
          verticalSpace(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  const Icon(
                    Icons.star,
                    color: ColorsManager.yellow,
                    size: 22,
                  ),
                  horizontalSpace(6),
                   Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text('$rate ( $rateCount تقييم)'),
                  ),
                ]),
                verticalSpace(8),
                Text(title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font12BlackRegular),
                verticalSpace(8),
                Text(location,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font12BlackRegular),
                verticalSpace(5),
                Text('$price/ ليلة', style: TextStyles.font14MainBlueBold),
              ],
            ),
          )
        ],
      ),
    );
  }
}
