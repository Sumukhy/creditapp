import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/asset_constants.dart';

class WithdrawalCardWidget extends StatelessWidget {
  final String title;
  final int count;
  final bool isOngoing;
  const WithdrawalCardWidget({
    super.key,
    required this.title,
    required this.count,
    this.isOngoing = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 56,
          width: 128,
          decoration: BoxDecoration(
            color: isOngoing ? const Color(0xff2B63A4) : Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SvgPicture.asset(isOngoing ? kOngoingWithdrawalBg : kPastWithdrawalBg),
        if (!isOngoing)
          Positioned(
            bottom: -57,
            left: -35,
            child: SvgPicture.asset(
              kCircleIcon,
              height: 90,
              width: 90,
              color: Colors.grey.shade800,
            ),
          ),
        SizedBox(
          height: 56,
          width: 128,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 12, right: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.grey[300], fontSize: 10),
                ),
                const Spacer(),
                Text(
                  count.toString(),
                  style: const TextStyle(
                    color: Color(0xffFFF3EB),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ).animate().flip(duration: 500.ms).then().shimmer(duration: 300.ms);
  }
}
