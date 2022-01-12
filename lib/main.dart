import 'dart:async';
import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:scale_button/scale_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birthdays',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late ConfettiController _controllerCenter;
  Color red = const Color(0xFFFF525C);

  void _showAllerOne() {
    showDialog(
      context: context,
      builder: (context) {
        return Stack(
          children: [
            Center(
              child: Material(
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Системное уведомление",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: MyButton(
                              label: "Да",
                              color: red,
                            ),
                          ),
                          const SizedBox(width: 28),
                          Expanded(
                            child: MyButton(
                              label: "Нет",
                              color: Colors.grey[300]!,
                              labelColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showAllertThree() {
    showDialog(
      context: context,
      builder: (context) {
        return Stack(
          children: [
            Center(
              child: Material(
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Системное уведомление",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Expanded(
                            child: MyButton(
                              label: "Да",
                              color: Colors.green,
                            ),
                          ),
                          const SizedBox(width: 28),
                          Expanded(
                            child: MyButton(
                              label: "Нет",
                              color: red,
                              labelColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showAllertFour() {
    showDialog(
      context: context,
      builder: (context) {
        return Stack(
          children: [
            Center(
              child: Material(
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Системное уведомление",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: MyButton(
                              label: "Да",
                              color: Colors.yellow[600]!,
                              labelColor: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 28),
                          Expanded(
                            child: MyButton(
                              label: "Нет",
                              color: Colors.grey[300]!,
                              labelColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showAllertFive() {
    showDialog(
      context: context,
      builder: (context) {
        return Stack(
          children: [
            Center(
              child: Material(
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Системное уведомление",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Expanded(
                            child: MyButton(
                              label: "Да",
                              color: Colors.green,
                              labelColor: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 28),
                          Expanded(
                            child: MyButton(
                              label: "Нет",
                              color: red,
                              labelColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showAllertTwo() {
    var bottom = MediaQuery.of(context).padding.bottom;

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => StandartBottomSheet(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, bottom + 20),
          child: Column(
            children: [
              const Expanded(
                child: Center(
                  child: Text(
                    "Системное уведомление",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: MyButton(
                      label: "Да",
                      color: red,
                    ),
                  ),
                  const SizedBox(width: 28),
                  Expanded(
                    child: MyButton(
                      label: "Нет",
                      color: Colors.grey[300]!,
                      labelColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        height: 200,
      ),
    );
  }

  Path drawStar(Size size) {
    // Method to convert degree to radians
    double degToRad(double deg) => deg * (pi / 180.0);

    const numberOfPoints = 5;
    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final internalRadius = halfWidth / 2.5;
    final degreesPerStep = degToRad(360 / numberOfPoints);
    final halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    final fullAngle = degToRad(360);
    path.moveTo(size.width, halfWidth);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step));
      path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep));
    }
    path.close();
    return path;
  }

  @override
  void initState() {
    super.initState();
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 3));
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              const SliverAppBar(
                title: Text(
                  "Примеры",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                centerTitle: true,
                backgroundColor: Colors.white,
              ),
              SliverToBoxAdapter(
                child: ScaleButton(
                  duration: const Duration(milliseconds: 150),
                  bound: 0.05,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            spreadRadius: 2,
                            blurRadius: 6,
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Кнопка 1",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        highlightColor: Colors.green[300],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            "Кнопка 2",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        highlightColor: Colors.yellow[600],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            "Кнопка 3",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: BoxDecoration(
                      color: Colors.yellow[600],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        highlightColor: Colors.yellow,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            "Кнопка 4",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: ScaleButton(
                  duration: const Duration(milliseconds: 150),
                  bound: 0.05,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red[600],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            spreadRadius: 2,
                            blurRadius: 6,
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Кнопка 5",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: ScaleButton(
                  duration: const Duration(milliseconds: 150),
                  bound: 0.05,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.red[600],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            spreadRadius: 2,
                            blurRadius: 6,
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Кнопка 6",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: ScaleButton(
                  duration: const Duration(milliseconds: 150),
                  bound: 0.05,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            spreadRadius: 2,
                            blurRadius: 6,
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Кнопка 7",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: ScaleButton(
                  duration: const Duration(milliseconds: 150),
                  bound: 0.05,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.yellow[600],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            spreadRadius: 1,
                            blurRadius: 2,
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Кнопка 8",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: 50,
                  child: TextButton(
                    child: const Text("Кнопка 3"),
                    onPressed: () {},
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: 50,
                  child: TextButton(
                    child: const Text("Показать диалог 1"),
                    onPressed: () => _showAllerOne(),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: 50,
                  child: TextButton(
                    child: const Text("Показать диалог 2"),
                    onPressed: () => _showAllertThree(),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: 50,
                  child: TextButton(
                    child: const Text("Показать диалог 3"),
                    onPressed: () => _showAllertFour(),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: 50,
                  child: TextButton(
                    child: const Text("Показать диалог 4"),
                    onPressed: () => _showAllertFive(),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: 50,
                  child: TextButton(
                    child: const Text("Показать диалог 5"),
                    onPressed: () => _showAllertTwo(),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: 50,
                  child: TextButton(
                    child: const Text("Салют конфетти"),
                    onPressed: () {
                      _controllerCenter.play();
                      Timer(
                        const Duration(seconds: 3),
                        () {
                          _controllerCenter.stop();
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: ConfettiWidget(
              confettiController: _controllerCenter,
              blastDirectionality: BlastDirectionality
                  .explosive, // don't specify a direction, blast randomly
              shouldLoop:
                  true, // start again as soon as the animation is finished
              colors: const [
                Colors.green,
                Colors.blue,
                Colors.pink,
                Colors.orange,
                Colors.purple
              ], // manually specify the colors to be used
              createParticlePath: drawStar, // define a custom shape/path.
            ),
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.label,
    required this.color,
    this.labelColor = Colors.white,
  }) : super(key: key);

  final String label;
  final Color labelColor;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          highlightColor: color.withOpacity(0.1),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: labelColor,
              ),
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}

class StandartBottomSheet extends StatelessWidget {
  const StandartBottomSheet({
    Key? key,
    required this.child,
    this.height,
  }) : super(key: key);

  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(13),
          topRight: Radius.circular(13),
        ),
      ),
      child: child,
    );
  }
}
