import 'package:flutter/material.dart';
import 'package:shooting_range/data/fake_data.dart';
import 'package:shooting_range/features/home/widgets/profile_card_vertical.dart';
import 'package:shooting_range/utils/consts/sizes.dart';

import '../widgets/tournament_card.dart';

class SmallView extends StatelessWidget {
  const SmallView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProfileCardVertical(
          profileModel: FakeData.profileModel,
        ),
        const SizedBox(height: AppSizes.spaceBetweenSections),
        TournamentCard(model: FakeData.nextTournaments),
        const SizedBox(width: AppSizes.spaceBetweenSections),
        TournamentCard(model: FakeData.participatedTurnaments),
      ],
    );
  }
}
