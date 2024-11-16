import 'package:flutter/material.dart';
import 'package:shooting_range/common/components/cards/curved_card.dart';
import 'package:shooting_range/common/components/texts/article_text.dart';
import 'package:shooting_range/data/fake_data.dart';
import 'package:shooting_range/utils/consts/sizes.dart';
import 'package:shooting_range/utils/consts/texts.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

import '../model/profile_model.dart';

class ProfileCardHorizontal extends StatelessWidget {
  const ProfileCardHorizontal({
    super.key,
    required this.profileModel,
    this.cardWidth,
    this.cardHeight,
    this.imageWidth,
    this.imageHeight,
  });

  final ProfileModel profileModel;
  final double? cardWidth;
  final double? cardHeight;
  final double? imageWidth;
  final double? imageHeight;

  @override
  Widget build(BuildContext context) {
    return CurvedCard(
      width: cardWidth ?? AppHelper.getScreenWidth(context) * 0.8,
      height: cardHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              profileModel.profilePhoto,
              width: imageWidth ?? AppHelper.getScreenWidth(context) * 0.25,
              height: imageHeight,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: AppSizes.spaceBetweenSections),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ArticleText(
                  leftText: FakeData.profileModel.fullName,
                  leftTextStyle: Theme.of(context).textTheme.titleLarge,
                  alignment: MainAxisAlignment.center,
                ),
                const SizedBox(height: AppSizes.spaceBetweenItems),
                ArticleText(
                  leftText: AppTexts.username,
                  rightText: FakeData.profileModel.userName,
                  leftTextStyle: Theme.of(context).textTheme.titleMedium,
                  rightTextStyle: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: AppSizes.spaceBetweenItems),
                ArticleText(
                  leftText: AppTexts.email,
                  rightText: FakeData.profileModel.email,
                  leftTextStyle: Theme.of(context).textTheme.titleMedium,
                  rightTextStyle: Theme.of(context).textTheme.titleSmall,
                ),
                ArticleText(
                  leftText: AppTexts.phone,
                  rightText: FakeData.profileModel.phoneNumber,
                  leftTextStyle: Theme.of(context).textTheme.titleMedium,
                  rightTextStyle: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: AppSizes.spaceBetweenSections),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "${AppTexts.lastSign} : ${profileModel.lastSignInDate}",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
