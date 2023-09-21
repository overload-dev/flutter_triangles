class TriangleEffect {
  final TrianglePoint p;
  final TrianglePoint ep;
  final double? yPos;

  const TriangleEffect({
    required this.p,
    required this.ep,
    this.yPos,
  });

  static List<TriangleEffect> values = [
    const TriangleEffect(
      p: TrianglePoint(x1: 75, x2: 75, x3: 80, y1: 0, y2: 50, y3: 50),
      ep: TrianglePoint(x1: 75, x2: 70, x3: 75, y1: 50, y2: 0, y3: 0),
    ),
    const TriangleEffect(
      p: TrianglePoint(x1: 75, x2: 80, x3: 4, y1: 0, y2: 50, y3: 50),
      ep: TrianglePoint(x1: 75, x2: 70, x3: 75, y1: 50, y2: 0, y3: 0),
    ),
    const TriangleEffect(
      p: TrianglePoint(x1: 75, x2: 80, x3: 75, y1: 0, y2: 50, y3: 50),
      ep: TrianglePoint(x1: 75, x2: 70, x3: 75, y1: 50, y2: 0, y3: 0),
    ),
    const TriangleEffect(
      p: TrianglePoint(x1: 75, x2: 75, x3: 80, y1: 0, y2: 50, y3: 50),
      ep: TrianglePoint(x1: 75, x2: 73, x3: 72, y1: 50, y2: 0, y3: 0),
    ),
    const TriangleEffect(
      p: TrianglePoint(x1: 75, x2: 75, x3: 80, y1: 0, y2: 50, y3: 50),
      ep: TrianglePoint(x1: 75, x2: 70, x3: 75, y1: 55, y2: 0, y3: 0),
    ),
    const TriangleEffect(
      p: TrianglePoint(x1: 75, x2: 10, x3: 84, y1: 0, y2: 90, y3: 90),
      ep: TrianglePoint(x1: 75, x2: -7, x3: 75, y1: 90, y2: 0, y3: 0),
      yPos: 90,
    ),
    const TriangleEffect(
      p: TrianglePoint(x1: 75, x2: 10, x3: 84, y1: 0, y2: 90, y3: 96),
      ep: TrianglePoint(x1: 75, x2: -7, x3: 75, y1: 90, y2: 0, y3: 0),
      yPos: 90,
    ),
  ];
}

class TrianglePoint {
  final double x1;
  final double x2;
  final double x3;
  final double y1;
  final double y2;
  final double y3;

  const TrianglePoint({
    required this.x1,
    required this.x2,
    required this.x3,
    required this.y1,
    required this.y2,
    required this.y3,
  });
}
