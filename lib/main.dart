import 'dart:math';
import 'package:flutter/material.dart';
import 'custom_stateless.dart';

enum ColorsFor {
  background,
  card1,
  card2,
  card3,
  card4,
}

Color textColor(Color bgColor) =>
    bgColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(),
        darkTheme: ThemeData.dark(),
        home: const MyHomePage(title: 'Lab work #8'),
        debugShowCheckedModeBanner: false,
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState() {
    _k = min(_g, _h);
    _e = min(_b, _d);
  }

  Map<ColorsFor, Color> colors = {
    ColorsFor.background: const Color(0xFFA85CF9),
    ColorsFor.card1: const Color(0xff6D67E4),
    ColorsFor.card2: const Color(0xffF2F7A1),
    ColorsFor.card3: const Color(0xffCF4647),
    ColorsFor.card4: const Color(0xff2A363B),
  };

  final double _borderRadius = 10;
  final EdgeInsets _padding = const EdgeInsets.all(16);

  final double _d = 100, _f = 100, _i = 100;
  final double _b = 200;
  final double _g = 350;
  final double _h = 550, _m = 550;
  final double _n = 5, _p = 5, _r = 5, _s = 5;
  double _e = 0, _k = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: colors[ColorsFor.background],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
            margin: EdgeInsets.only(top: 10, bottom: _e),
            child: Row(
              children: [
                Column(
                  children: [
                    CustomCard(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(_borderRadius),
                      )),
                      margin: EdgeInsets.only(left: _f),
                      color: colors[ColorsFor.card1],
                      child: Container(
                        width: _g,
                        padding: _padding,
                        child: Text(
                            "Ще не вмерла України ні слава, ні воля.\nЩе нам, браття-українці, усміхнеться доля.",
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.fontSize,
                                color: textColor(colors[ColorsFor.card1]!))),
                      ),
                    ),
                    CustomCard(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(_borderRadius),
                      )),
                      margin: EdgeInsets.only(left: _k),
                      color: colors[ColorsFor.card2],
                      child: Container(
                        padding: EdgeInsets.only(
                            left: _n, top: _r, right: _p, bottom: _s),
                        width: _m,
                        child: Text("Душу й тіло ми положим за нашу свободу,",
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.fontSize,
                                color: textColor(colors[ColorsFor.card2]!))),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomCard(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topRight: Radius.circular(_borderRadius),
                      )),
                      margin: EdgeInsets.only(right: _i),
                      color: colors[ColorsFor.card3],
                      child: Container(
                        alignment: Alignment.center,
                        height: _b,
                        width: _h,
                        padding: _padding,
                        child: Text(
                            "Згинуть наші вороженьки, як роса на сонці, \nЗапануєм і ми, браття, у своїй сторонці.",
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.fontSize,
                                color: textColor(colors[ColorsFor.card3]!))),
                      ),
                    ),
                    CustomCard(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(_borderRadius),
                      )),
                      color: colors[ColorsFor.card4],
                      child: Container(
                        alignment: Alignment.center,
                        height: _d,
                        padding: _padding,
                        child: Text(
                            "І покажем, що ми, браття, козацького роду.",
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.fontSize,
                                color: textColor(colors[ColorsFor.card4]!))),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ));
}
