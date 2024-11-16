import 'package:flutter/material.dart';
import 'package:shooting_range/data/fake_data.dart';
import 'package:shooting_range/features/home/widgets/profile_card_horizontal.dart';
import 'package:shooting_range/utils/consts/sizes.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

import '../widgets/tournament_card.dart';

class LargeView extends StatelessWidget {
  const LargeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProfileCardHorizontal(
          profileModel: FakeData.profileModel,
        ),
        const SizedBox(height: AppSizes.spaceBetweenSections),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TournamentCard(
              cardWidth: AppHelper.getScreenWidth(context) * 0.37,
              model: FakeData.nextTournaments,
            ),
            const SizedBox(width: AppSizes.spaceBetweenItems),
            TournamentCard(
              cardWidth: AppHelper.getScreenWidth(context) * 0.37,
              model: FakeData.participatedTurnaments,
            )
          ],
        )
      ],
    );
  }
}
