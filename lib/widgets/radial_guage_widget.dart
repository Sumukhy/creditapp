import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../constants/color_constants.dart';
import '../constants/string_constants.dart';

class RadialGuageWidget extends StatelessWidget {
  const RadialGuageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          minimum: 0,
          maximum: 100,
          showLabels: false,
          showTicks: false,
          startAngle: 270,
          endAngle: 270,
          axisLineStyle: const AxisLineStyle(
            thickness: 0.20,
            color: Color(0xffF7F7F7),
            thicknessUnit: GaugeSizeUnit.factor,
          ),
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
              positionFactor: 0.1,
              widget: Text(
                "25 % $kUtilisedString",
                style: GoogleFonts.figtree(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: kSecondaryColor,
                ),
              ),
            ),
          ],
          pointers: <GaugePointer>[
            RangePointer(
              value: 25,
              width: 0.1, //0.25
              enableAnimation: true,
              animationDuration: 1500,
              gradient: SweepGradient(
                colors: <Color>[
                  chartBarColor,
                  chartBarColor.withOpacity(0.9),
                ],
                stops: const <double>[
                  0.25,
                  0.75,
                ],
              ),
              pointerOffset: 0.05,
              cornerStyle: CornerStyle.bothCurve,
              sizeUnit: GaugeSizeUnit.factor,
              color: chartBarColor,
            )
          ],
        ),
      ],
    );
  }
}
