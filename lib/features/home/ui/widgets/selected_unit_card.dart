import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:reset_app/core/helpers/spacing.dart';
import 'package:reset_app/core/theming/colors.dart';
import 'package:reset_app/core/theming/styles.dart';

class SelectedUnitCard extends StatelessWidget {
  const SelectedUnitCard({
    super.key,
    required this.image,
    required this.rate,
    required this.rateCount,
    required this.location,
    required this.price,
    required this.title,
    required this.isFavorite,
    required this.onToggleFavorite,
    required this.bedCount,
    required this.bathroomCount,
    required this.livingRoomCount,
  });
  final String image,
      rate,
      rateCount,
      location,
      price,
      title,
      bedCount,
      bathroomCount,
      livingRoomCount;
  final bool isFavorite;
  final VoidCallback onToggleFavorite;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.only(bottom: 20),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                Row(
                  children: [
                    _buildUnitContent(
                        image: HugeIcons.strokeRoundedBedSingle01,
                        count: bathroomCount),
                    _buildUnitContent(
                        image: HugeIcons.strokeRoundedBathtub02,
                        count: bathroomCount),
                    _buildUnitContent(
                        image: HugeIcons.strokeRoundedSofa01,
                        count: livingRoomCount),
                  ],
                ),
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

  Container _buildUnitContent(
      {required IconData image, required String count}) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 10),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(count, style: TextStyles.font12BlackRegular),
          horizontalSpace(5),
          HugeIcon(icon: image, color: Colors.black),
        ],
      ),
    );
  }
}
