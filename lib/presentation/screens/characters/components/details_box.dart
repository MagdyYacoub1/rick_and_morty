import 'package:flutter/material.dart';
import 'package:rick_and_morty/constants/colors.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/presentation/screens/characters/components/details_area.dart';

///details box shows details for each character
class DetailsBox extends StatelessWidget {
  ///creates a box to display details on each character
  const DetailsBox({required this.character, super.key});

  ///identify which character to be displayed
  final Character character;

  @override
  Widget build(BuildContext context) {
    const cardRadius = 15.0;
    return Center(
      child: Container(
        decoration: const CustomDecoration(skip: cardRadius),
        child: Material(
          clipBehavior: Clip.antiAlias,
          color: AppColors.teal.withOpacity(0.3),
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(cardRadius),
            side: const BorderSide(
              width: 3,
              color: AppColors.teal,
            ),
          ),
          child: DetailsArea(character: character),
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

    //final rect = rect;
    final path = Path();
    /*..moveTo(rect.topLeft.dx + skip, rect.topLeft.dy)
      ..lineTo(rect.topRight.dx - skip, rect.topRight.dy)
      ..lineTo(rect.topRight.dx, rect.topRight.dy + skip)
      ..lineTo(rect.bottomRight.dx, rect.bottomRight.dy - skip)
      ..lineTo(rect.bottomRight.dx - skip, rect.bottomRight.dy)
      ..lineTo(rect.bottomLeft.dx + skip, rect.bottomLeft.dy)
      ..lineTo(rect.bottomLeft.dx, rect.bottomLeft.dy - skip)
      ..lineTo(rect.topLeft.dx, rect.topLeft.dy + skip)
      ..close();

     canvas.drawPath(path, paint);*/

    paint
      ..style = PaintingStyle.fill
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.round;

    final height = rect.height * 0.15;

    //Left side shape
    var startX = rect.topLeft.dx - 5;
    var startY = rect.topLeft.dy + rect.height / 2;

    path
      ..reset()
      ..moveTo(startX, startY - height + 60)
      ..lineTo(startX, startY - height + 30)
      ..lineTo(startX - 10, startY - height + 20)
      ..lineTo(startX - 10, startY - height + 50)
      ..close();
    canvas.drawPath(path, paint);

    startX = rect.topLeft.dx - 5;
    startY = rect.topLeft.dy + 15;
    var endX = rect.bottomLeft.dx + 15;
    var endY = rect.topLeft.dy - 5;
    var width = rect.width * 0.40;
    path
      ..reset()
      ..moveTo(startX, startY)
      ..lineTo(startX + 20, startY - 20)
      ..lineTo(startX + width, startY - 20)
      ..lineTo(startX + width, startY - 22)
      ..lineTo(startX + width - 30, startY - 22)
      ..lineTo(startX + width - 40, startY - 28)
      ..lineTo(startX + 20, startY - 28)
      ..lineTo(startX - 5, startY)
      ..lineTo(startX - 5, startY + height - 60)
      ..lineTo(startX - 10, startY + height - 50)
      ..lineTo(startX - 10, startY + height - 10)
      ..lineTo(startX - 5, startY + height)
      ..lineTo(startX - 5, startY + height + 30)
      ..lineTo(startX - 10, startY + height + 40)
      ..lineTo(startX - 10, startY + height + 80)
      ..lineTo(startX, startY + height + 90)
      ..close();
    canvas.drawPath(path, paint);

    path
      ..reset()
      ..moveTo(startX - 15, startY + height - 50)
      ..lineTo(startX - 15, startY + height - 10)
      ..lineTo(startX - 10, startY + height)
      ..lineTo(startX - 10, startY + height * 1.4)
      ..lineTo(startX - 15, startY + height * 1.4 + 10)
      ..lineTo(startX - 15, startY + height * 1.4 + 40)
      ..lineTo(startX - 18, startY + height * 1.4 + 40)
      ..lineTo(startX - 18, startY + height - 50)
      ..close();
    canvas.drawPath(path, paint);

    startX = rect.bottomLeft.dx - 10;
    startY = rect.bottomLeft.dy - 30;
    canvas.drawCircle(Offset(startX, startY), 5, paint);
    paint.style = PaintingStyle.stroke;
    path
      ..reset()
      ..moveTo(startX, startY)
      ..lineTo(startX, startY - height * 2.8)
      ..lineTo(startX - 12, startY - height * 2.8 - 10)
      ..lineTo(startX - 12, startY - height * 3.7);
    canvas.drawPath(path, paint);

    //Right side shape
    paint.style = PaintingStyle.fill;

    startX = rect.topRight.dx + 5;
    startY = rect.topRight.dy + rect.height / 2;
    path
      ..reset()
      ..moveTo(startX, startY)
      ..lineTo(startX, startY - 30)
      ..lineTo(startX + 10, startY - 40)
      ..lineTo(startX + 10, startY - 10)
      ..close();
    //canvas.drawPath(path, paint);

    startX = rect.topRight.dx + 5;
    startY = rect.topRight.dy;
    path
      ..reset()
      ..moveTo(startX, rect.topLeft.dy + rect.height / 2 - 40)
      ..lineTo(startX, startY + 10)
      ..lineTo(startX - 15, startY - 7)
      ..lineTo(startX - 120, startY - 7)
      ..lineTo(startX - 120, startY - 9)
      ..lineTo(startX - 80, startY - 9)
      ..lineTo(startX - 70, startY - 15)
      ..lineTo(startX - 15, startY - 15)
      ..lineTo(startX + 5, startY + 5)
      ..lineTo(startX + 5, startY + 30)
      ..lineTo(startX + 10, startY + 40)
      ..lineTo(startX + 10, startY + 80)
      ..lineTo(startX + 5, startY + 90)
      ..lineTo(startX + 5, startY + 120)
      ..lineTo(startX + 10, startY + 130)
      ..lineTo(startX + 10, startY + rect.height / 2 - 50)
      ..close();
    canvas.drawPath(path, paint);

    path
      ..reset()
      ..moveTo(startX + 20, startY + 40)
      ..lineTo(startX + 20, startY + 80)
      ..lineTo(startX + 12, startY + 90)
      ..lineTo(startX + 12, startY + 120)
      ..lineTo(startX + 20, startY + 130)
      ..lineTo(startX + 20, startY + 150)
      ..lineTo(startX + 22, startY + 150)
      ..lineTo(startX + 22, startY + 40)
      ..close();
    canvas.drawPath(path, paint);

    startX = rect.bottomRight.dx + 10;
    startY = rect.bottomRight.dy - 30;
    canvas.drawCircle(Offset(startX, startY), 5, paint);
    paint.style = PaintingStyle.stroke;
    path
      ..reset()
      ..moveTo(startX, startY)
      ..lineTo(startX, startY - rect.height / 2 + 40)
      ..lineTo(startX + 15, startY - rect.height / 2 + 25)
      ..lineTo(startX + 15, startY - rect.height / 2 - 50);
    canvas.drawPath(path, paint);

    //bottom side shape
    paint.style = PaintingStyle.fill;
    startX = rect.bottomRight.dx - 15;
    startY = rect.bottomRight.dy + 2;
    endX = rect.bottomLeft.dx + 15;
    endY = rect.bottomLeft.dy + 2;
    width = rect.width * 0.15;

    path
      ..reset()
      ..moveTo(startX, startY)
      ..lineTo(endX, endY)
      ..lineTo(endX + 5, endY + 5)
      ..lineTo(endX + width, endY + 5)
      ..lineTo(endX + width + 10, endY + 15)
      ..lineTo(endX + width + 50, endY + 15)
      ..lineTo(endX + width + 60, endY + 5)
      ..lineTo(startX - width - 60, startY + 5)
      ..lineTo(startX - width - 50, startY + 15)
      ..lineTo(startX - width - 10, startY + 15)
      ..lineTo(startX - width, startY + 5)
      ..lineTo(startX - 5, startY + 5)
      ..close();
    canvas.drawPath(path, paint);

    startX = rect.bottomRight.dx - 70;
    startY = rect.bottomRight.dy + 25;
    endX = rect.bottomLeft.dx + 70;
    endY = rect.bottomLeft.dy + 25;
    path
      ..reset()
      ..moveTo(startX - 5, startY)
      ..lineTo(startX, startY - 5)
      ..lineTo(startX - width, startY - 5)
      ..lineTo(startX - width - 10, startY - 15)
      ..lineTo(endX + width + 10, endY - 15)
      ..lineTo(endX + width, endY - 5)
      ..lineTo(endX, endY - 5)
      ..lineTo(endX + 5, endY)
      ..close();
    canvas.drawPath(path, paint);
  }
}
