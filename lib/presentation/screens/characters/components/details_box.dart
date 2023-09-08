import 'package:flutter/material.dart';
import 'package:rick_and_morty/constants/colors.dart';
import 'package:rick_and_morty/presentation/screens/characters/components/details_area.dart';

///details box shows details for each character
class DetailsBox extends StatelessWidget {
  ///creates a box to display details on each character
  const DetailsBox({required this.index, super.key});

  ///identify which charcter to be displayed
  final int index;

  @override
  Widget build(BuildContext context) {
    const cardRadius = 15.0;
    return Center(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: const CustomDecoration(skip: cardRadius),
        child: PhysicalShape(
          clipBehavior: Clip.antiAlias,
          clipper: ShapeBorderClipper(
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(cardRadius),
            ),
          ),
          color: AppColors.teal.withOpacity(0.3),
          child: DetailsArea(index: index),
        ),
      ),
    );
  }
}

///Used to create a custom decoration for class
class CustomDecoration extends Decoration {
  ///
  const CustomDecoration({required this.skip});

  ///
  final double skip;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return CharacterFrame(skip: skip);
  }
}

/// used to paint frame around each character
class CharacterFrame extends BoxPainter {
  ///
  CharacterFrame({required this.skip});

  ///
  final double skip;
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final rect = offset & configuration.size!;

    final paint = Paint()
      ..color = AppColors.teal
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.square;

    final inflatedRect = rect;
    final path = Path()
      ..moveTo(inflatedRect.topLeft.dx + skip, inflatedRect.topLeft.dy)
      ..lineTo(inflatedRect.topRight.dx - skip, inflatedRect.topRight.dy)
      ..lineTo(inflatedRect.topRight.dx, inflatedRect.topRight.dy + skip)
      ..lineTo(inflatedRect.bottomRight.dx, inflatedRect.bottomRight.dy - skip)
      ..lineTo(inflatedRect.bottomRight.dx - skip, inflatedRect.bottomRight.dy)
      ..lineTo(inflatedRect.bottomLeft.dx + skip, inflatedRect.bottomLeft.dy)
      ..lineTo(inflatedRect.bottomLeft.dx, inflatedRect.bottomLeft.dy - skip)
      ..lineTo(inflatedRect.topLeft.dx, inflatedRect.topLeft.dy + skip)
      ..close();

    canvas.drawPath(path, paint);

    paint
      ..style = PaintingStyle.fill
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.round;

    //Left side shape
    var startx = inflatedRect.topLeft.dx - 5;
    var starty = inflatedRect.topLeft.dy + inflatedRect.height / 2;
    path
      ..reset()
      ..moveTo(startx, starty)
      ..lineTo(startx, starty - 30)
      ..lineTo(startx - 10, starty - 40)
      ..lineTo(startx - 10, starty - 10)
      ..close();
    canvas.drawPath(path, paint);

    startx = inflatedRect.topLeft.dx - 5;
    starty = inflatedRect.topLeft.dy;
    path
      ..reset()
      ..moveTo(startx, inflatedRect.topLeft.dy + inflatedRect.height / 2 - 40)
      ..lineTo(startx, starty + 10)
      ..lineTo(startx + 15, starty - 7)
      ..lineTo(startx + 120, starty - 7)
      ..lineTo(startx + 120, starty - 9)
      ..lineTo(startx + 80, starty - 9)
      ..lineTo(startx + 70, starty - 15)
      ..lineTo(startx + 15, starty - 15)
      ..lineTo(startx - 5, starty + 5)
      ..lineTo(startx - 5, starty + 30)
      ..lineTo(startx - 10, starty + 40)
      ..lineTo(startx - 10, starty + 80)
      ..lineTo(startx - 5, starty + 90)
      ..lineTo(startx - 5, starty + 120)
      ..lineTo(startx - 10, starty + 130)
      ..lineTo(startx - 10, starty + inflatedRect.height / 2 - 50)
      ..close();
    canvas.drawPath(path, paint);

    path
      ..reset()
      ..moveTo(startx - 20, starty + 40)
      ..lineTo(startx - 20, starty + 80)
      ..lineTo(startx - 12, starty + 90)
      ..lineTo(startx - 12, starty + 120)
      ..lineTo(startx - 20, starty + 130)
      ..lineTo(startx - 20, starty + 150)
      ..lineTo(startx - 22, starty + 150)
      ..lineTo(startx - 22, starty + 40)
      ..close();
    canvas.drawPath(path, paint);

    startx = inflatedRect.bottomLeft.dx - 10;
    starty = inflatedRect.bottomLeft.dy - 30;
    canvas.drawCircle(Offset(startx, starty), 5, paint);
    paint.style = PaintingStyle.stroke;
    path
      ..reset()
      ..moveTo(startx, starty)
      ..lineTo(startx, starty - inflatedRect.height / 2 + 40)
      ..lineTo(startx - 15, starty - inflatedRect.height / 2 + 25)
      ..lineTo(startx - 15, starty - inflatedRect.height / 2 - 50);
    canvas.drawPath(path, paint);

    //Right side shape
    paint.style = PaintingStyle.fill;

    startx = inflatedRect.topRight.dx + 5;
    starty = inflatedRect.topRight.dy + inflatedRect.height / 2;
    path
      ..reset()
      ..moveTo(startx, starty)
      ..lineTo(startx, starty - 30)
      ..lineTo(startx + 10, starty - 40)
      ..lineTo(startx + 10, starty - 10)
      ..close();
    canvas.drawPath(path, paint);

    startx = inflatedRect.topRight.dx + 5;
    starty = inflatedRect.topRight.dy;
    path
      ..reset()
      ..moveTo(startx, inflatedRect.topLeft.dy + inflatedRect.height / 2 - 40)
      ..lineTo(startx, starty + 10)
      ..lineTo(startx - 15, starty - 7)
      ..lineTo(startx - 120, starty - 7)
      ..lineTo(startx - 120, starty - 9)
      ..lineTo(startx - 80, starty - 9)
      ..lineTo(startx - 70, starty - 15)
      ..lineTo(startx - 15, starty - 15)
      ..lineTo(startx + 5, starty + 5)
      ..lineTo(startx + 5, starty + 30)
      ..lineTo(startx + 10, starty + 40)
      ..lineTo(startx + 10, starty + 80)
      ..lineTo(startx + 5, starty + 90)
      ..lineTo(startx + 5, starty + 120)
      ..lineTo(startx + 10, starty + 130)
      ..lineTo(startx + 10, starty + inflatedRect.height / 2 - 50)
      ..close();
    canvas.drawPath(path, paint);

    path
      ..reset()
      ..moveTo(startx + 20, starty + 40)
      ..lineTo(startx + 20, starty + 80)
      ..lineTo(startx + 12, starty + 90)
      ..lineTo(startx + 12, starty + 120)
      ..lineTo(startx + 20, starty + 130)
      ..lineTo(startx + 20, starty + 150)
      ..lineTo(startx + 22, starty + 150)
      ..lineTo(startx + 22, starty + 40)
      ..close();
    canvas.drawPath(path, paint);

    startx = inflatedRect.bottomRight.dx + 10;
    starty = inflatedRect.bottomRight.dy - 30;
    canvas.drawCircle(Offset(startx, starty), 5, paint);
    paint.style = PaintingStyle.stroke;
    path
      ..reset()
      ..moveTo(startx, starty)
      ..lineTo(startx, starty - inflatedRect.height / 2 + 40)
      ..lineTo(startx + 15, starty - inflatedRect.height / 2 + 25)
      ..lineTo(startx + 15, starty - inflatedRect.height / 2 - 50);
    canvas.drawPath(path, paint);

    //bottom side shape
    paint.style = PaintingStyle.fill;
    startx = inflatedRect.bottomRight.dx - 15;
    starty = inflatedRect.bottomRight.dy + 5;
    var endx = inflatedRect.bottomLeft.dx + 15;
    var endy = inflatedRect.bottomLeft.dy + 5;
    path
      ..reset()
      ..moveTo(startx, starty)
      ..lineTo(endx, endy)
      ..lineTo(endx + 5, endy + 5)
      ..lineTo(endx + 40, endy + 5)
      ..lineTo(endx + 50, endy + 15)
      ..lineTo(endx + 100, endy + 15)
      ..lineTo(endx + 110, endy + 5)
      ..lineTo(startx - 110, starty + 5)
      ..lineTo(startx - 100, starty + 15)
      ..lineTo(startx - 50, starty + 15)
      ..lineTo(startx - 40, starty + 5)
      ..lineTo(startx - 5, starty + 5)
      ..close();
    canvas.drawPath(path, paint);

    startx = inflatedRect.bottomRight.dx - 70;
    starty = inflatedRect.bottomRight.dy + 28;
    endx = inflatedRect.bottomLeft.dx + 70;
    endy = inflatedRect.bottomLeft.dy + 28;
    path
      ..reset()
      ..moveTo(startx, starty)
      ..lineTo(startx + 5, starty - 5)
      ..lineTo(startx - 50, starty - 5)
      ..lineTo(startx - 60, starty - 15)
      ..lineTo(endx + 60, endy - 15)
      ..lineTo(endx + 50, endy - 5)
      ..lineTo(endx - 5, endy - 5)
      ..lineTo(endx, endy)
      ..close();
    canvas.drawPath(path, paint);
  }
}
