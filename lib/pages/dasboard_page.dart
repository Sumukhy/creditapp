import 'package:creditapp/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/color_constants.dart';
import '../constants/string_constants.dart';
import '../widgets/custom_rounded_outlined_button.dart';
import '../widgets/kpi_widget.dart';
import '../widgets/radial_guage_widget.dart';
import '../widgets/withdrawal_card_widget.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      kGradientStartColor,
                      kGradientEndColor,
                    ],
                    stops: [0.0, 0.8],
                  ),
                ),
                child: Column(
                  children: [
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              kHamburgerIcon,
                              semanticsLabel: 'Hamburger Icon',
                            ),
                            const Spacer(),
                            SvgPicture.asset(
                              kNotificationIcon,
                              semanticsLabel: 'Notification Icon',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: kProcessingFeeBGColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Wrap(
                            children: [
                              SvgPicture.asset(kDiscountIcon),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                kZeroProcessingFeeString,
                                style: TextStyle(
                                  color: kSecondaryColor,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(width: 50)
                            ],
                          ).animate().fade(duration: 500.ms),
                        ),
                      ).animate().shimmer(duration: 700.ms),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: SizedBox(
                        height: 150,
                        child: Row(
                          children: [
                            const Expanded(child: RadialGuageWidget()),
                            Expanded(
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    KPIWidget(
                                      title: kTotalLimitKPIString,
                                      value: 200000,
                                      isBold: true,
                                    ),
                                    KPIWidget(
                                      title: kUtilisedLimitKPIString,
                                      value: 50000,
                                    ),
                                    KPIWidget(
                                      title: kAvailableLimitKPIString,
                                      value: 150000,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: const LinearGradient(
                          colors: [
                            kWithdrawMoreStartColor,
                            kWithdrawMoreEndColor,
                          ],
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Center(
                          child: Text(
                            kWithdrawMoreString,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                        .animate()
                        .scale(duration: 400.ms)
                        .then()
                        .shimmer(duration: 300.ms),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -150,
                left: -395,
                child: SvgPicture.asset(
                  kCircleIcon,
                  height: 500,
                  width: 500,
                ),
              ),
              Positioned(
                top: 13,
                right: -1045,
                child: SvgPicture.asset(
                  kCircleIcon,
                  height: 500,
                  width: 500,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  kAllWithdrawalsString,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 8,
                ),
                Wrap(
                  children: const [
                    WithdrawalCardWidget(
                      title: kOngoingWithdrawalsString,
                      count: 1,
                      isOngoing: true,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    WithdrawalCardWidget(
                      title: kPastWithdrawalsString,
                      count: 2,
                      isOngoing: false,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  kDownloadDocsString,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 2,
                ),
                Wrap(
                  children: [
                    CustomRoundedOutlinedButton(
                      title: kSanctionLetterDownloadString,
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    CustomRoundedOutlinedButton(
                      title: kAgreementLetterDownloadString,
                      onTap: () {},
                    ),
                  ],
                ).animate().scale(duration: 500.ms),
              ],
            ),
          )
        ],
      ),
    );
  }
}
