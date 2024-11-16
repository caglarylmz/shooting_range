import 'package:flutter/material.dart';
import 'package:shooting_range/common/components/cards/curved_card.dart';
import 'package:shooting_range/common/components/texts/article_text.dart';
import 'package:shooting_range/data/fake_data.dart';
import 'package:shooting_range/utils/consts/sizes.dart';
import 'package:shooting_range/utils/consts/texts.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

import '../model/profile_model.dart';

class ProfileCardVertical extends StatelessWidget {
  const ProfileCardVertical({
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
      width: cardWidth ?? AppHelper.getScreenWidth(context) * 0.70,
      height: cardHeight,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              profileModel.profilePhoto,
              width: imageWidth ?? AppHelper.getScreenWidth(context) * 0.20,
              height: imageHeight,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBetweenSections),
          ArticleText(
            leftText: FakeData.profileModel.fullName,
            leftTextStyle: Theme.of(context).textTheme.titleSmall,
            alignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: AppSizes.spaceBetweenItems),
          ArticleText(
            leftText: AppTexts.username,
            rightText: FakeData.profileModel.userName,
          ),
          const SizedBox(height: AppSizes.spaceBetweenItems),
          ArticleText(
            leftText: AppTexts.email,
            rightText: FakeData.profileModel.email,
          ),
          ArticleText(
            leftText: AppTexts.phone,
            rightText: FakeData.profileModel.phoneNumber,
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
    );
  }
}
