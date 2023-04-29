import 'package:bank/components/box_card.dart';
import 'package:flutter/material.dart';

import '../../themes/theme_colors.dart';
import '../color_dot.dart';
import '../content_division.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              "Account points",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BoxCard(
                content: _AccountPointsContent(),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Total points:", style: Theme.of(context).textTheme.bodyMedium),
        Text('3000', style: Theme.of(context).textTheme.bodyLarge),
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: ContentDivision(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4, top: 4),
          child: Text("Goals:", style: Theme.of(context).textTheme.titleMedium),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(color: ThemeColors.recentActivity['delivery']),
            ),
            Text('Free delivery: 15000pts',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(color: ThemeColors.recentActivity['streaming']),
            ),
            Text('1 month of streaming: 30000pts',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }
}
