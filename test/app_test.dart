import 'package:contador/src/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('test de texto principal', (tester) async {
    await tester.pumpWidget(new MyApp());
    //expect(find.text('Número de taps!!'), findsOneWidget);
    expect(find.text('Opssss!!'), findsOneWidget);
  });

  testWidgets('test de botón incrementar', (tester) async {
    await tester.pumpWidget(new MyApp());
    expect(
      find.widgetWithIcon(FloatingActionButton, Icons.add),
      findsOneWidget
      );
  });

  testWidgets('test contador en cero', (tester) async {
    await tester.pumpWidget(new MyApp());
    expect(
      find.text('0'),findsOneWidget
      );
  });

  testWidgets('test de función incrementar', (tester) async {
    await tester.pumpWidget(new MyApp());

    Finder finder = find.widgetWithIcon(FloatingActionButton, Icons.add);

    expect(
      finder,findsOneWidget
      );

    //Incrementamos a 1 el contador
    await tester.tap(finder);
    await tester.pumpAndSettle();

    expect(
      find.text('1'),findsOneWidget);

    //Incrementamos a 2 el contador
    await tester.tap(finder);
    await tester.pumpAndSettle();

    expect(
      find.text('2'),findsOneWidget);
  });

  testWidgets('test de función decrementar', (tester) async {
    await tester.pumpWidget(new MyApp());

    Finder finder = find.widgetWithIcon(FloatingActionButton, Icons.remove);

    expect(finder,findsOneWidget);

    //Decrementamos a 1 el contador
    await tester.tap(finder);
    await tester.tap(finder);
    await tester.tap(finder);
    await tester.tap(finder);
    await tester.tap(finder);
    await tester.pumpAndSettle();

    expect(
      find.text('-5'),findsOneWidget);

  });

  testWidgets('test de función resetear', (tester) async {
    await tester.pumpWidget(new MyApp());

    Finder finder = find.widgetWithIcon(FloatingActionButton, Icons.remove);
    expect(finder,findsOneWidget);

    Finder finder2 = find.widgetWithIcon(FloatingActionButton, Icons.exposure_zero);
    expect(finder2,findsOneWidget);

    //Decrementamos a 1 el contador
    await tester.tap(finder);
    await tester.tap(finder2);
    await tester.pumpAndSettle();

    expect(
      find.text('0'),findsOneWidget);

  });


}