import 'package:flutter/material.dart';
import 'package:moneymateapp/core/styles/project_colors.dart';

class PercentageSlider extends StatefulWidget {
  const PercentageSlider({super.key});

  @override
  State<PercentageSlider> createState() => _PercentageSliderState();
}

class _PercentageSliderState extends State<PercentageSlider> {
  double _value = 50;

  @override
  Widget build(BuildContext context) {
    
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        thumbShape: CustomOvalThumbShape(),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 24),
        trackHeight: 6, // سمك الخط
        activeTrackColor: ProjectColors.primaryColor,
        inactiveTrackColor: Colors.grey.shade300,
      ),
      child: Slider(
        value: _value,
        min: 0,
        max: 100,
        divisions: 100,
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
      ),
    );
  }
}

class CustomOvalThumbShape extends SliderComponentShape {
  final double width;
  final double height;

  CustomOvalThumbShape({this.width = 40, this.height = 28});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(width, height);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final rect = Rect.fromCenter(center: center, width: width, height: height);
    final rRect = RRect.fromRectAndRadius(rect, Radius.circular(height / 2));

    final paint = Paint()
      ..color = ProjectColors.primaryColor
      ..style = PaintingStyle.fill;

    canvas.drawRRect(rRect, paint);

    final percentage = '${(value * 100).round()}%';

    final textSpan = TextSpan(
      text: percentage,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ),
    );

    final textPainter = TextPainter(
      text: textSpan,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    )..layout();

    final offset = center - Offset(textPainter.width / 2, textPainter.height / 2);
    textPainter.paint(canvas, offset);
  }
}