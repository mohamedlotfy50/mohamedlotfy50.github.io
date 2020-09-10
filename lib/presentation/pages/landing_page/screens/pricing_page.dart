import 'package:flutter/material.dart';
import 'package:translation_website/presentation/pages/landing_page/widgets/pricing_card.dart';
import 'package:translation_website/presentation/pages/landing_page/widgets/shadow_text.dart';
import 'package:translation_website/presentation/shared/layout_builder.dart';

class PricingPgae extends StatelessWidget {
  const PricingPgae({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyLayOutBuilder(
        web: Column(
          children: [
            Column(
              children: [
                ShadowTextTitle(
                  title: 'Pricing',
                  height: 80,
                  width: 180,
                ),
                Text('some sub title to descripe the the pricing'),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: PricingCard(),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    PricingCard(),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: PricingCard(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        mobile: Column(
          children: [
            Column(
              children: [
                ShadowTextTitle(
                  title: 'Pricing',
                  height: 80,
                  width: 180,
                ),
                Text('some sub title to descripe the the pricing'),
              ],
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  PricingCard(),
                  PricingCard(),
                  PricingCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
