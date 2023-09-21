import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_triangles/main.dart';

void main() {
  testWidgets('Do nothing test', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
  });
}
