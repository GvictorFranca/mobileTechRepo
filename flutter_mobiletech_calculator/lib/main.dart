import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MobileTech',
      theme: ThemeData(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => SelectALocation(),
        '/nextpage': (context) => NextPage(),
      },
    );
  }
}

class SelectALocation extends StatefulWidget {
  @override
  _SelectALocationState createState() => _SelectALocationState();
}

class _SelectALocationState extends State<SelectALocation> {
  String locationText = '';
  final totalValueController = MoneyMaskedTextController(
      decimalSeparator: ',', thousandSeparator: '.', leftSymbol: 'R\$');

  final entraceValueController = MoneyMaskedTextController(
      decimalSeparator: ',', thousandSeparator: '.', leftSymbol: 'R\$');

  Widget totalValueControllerWidget() {
    return Column(
      children: <Widget>[
        Container(
          width: 300,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(0.0, 1.0),
                  blurRadius: 6.0),
            ],
            color: Colors.red[800],
          ),
          child: TextField(
            controller: totalValueController,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              shadows: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(0.5, 0.5),
                    blurRadius: 6.0),
              ],
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.5, 0.5),
                      blurRadius: 6.0),
                ],
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget entraceValueControllerWidget() {
    return Column(
      children: <Widget>[
        Container(
          width: 300,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(0.0, 1.0),
                  blurRadius: 6.0),
            ],
            color: Colors.red[800],
          ),
          child: TextField(
            controller: entraceValueController,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              shadows: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(0.5, 0.5),
                    blurRadius: 6.0),
              ],
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.5, 0.5),
                      blurRadius: 6.0),
                ],
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final path = 'assets/images/logo1.svg';

    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 180),
                  Container(
                    height: 70,
                    child: SvgPicture.asset(path),
                  ),
                  Center(
                    child: Text(
                      '@sigamobiletech',
                      style: GoogleFonts.raleway(
                        decoration: TextDecoration.none,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 180.0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.grey[850], boxShadow: [
                        BoxShadow(
                            color: Colors.grey[850],
                            offset: Offset(0.0, 1.0),
                            blurRadius: 6.0),
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'valor da compra'.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  totalValueControllerWidget(),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 160.0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.grey[850], boxShadow: [
                        BoxShadow(
                            color: Colors.grey[850],
                            offset: Offset(0.0, 1.0),
                            blurRadius: 6.0),
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'entrada em dinheiro'.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  entraceValueControllerWidget(),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    child: RaisedButton(
                      elevation: 10,
                      color: Colors.red[800],
                      child: Text(
                        'Simular'.toUpperCase(),
                        style: GoogleFonts.montserrat(shadows: [
                          Shadow(
                            offset: Offset(1.5, 1.5),
                            blurRadius: 1.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ], color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        if (totalValueController.text == 'R\$0,00') {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  CupertinoAlertDialog(
                                    title: Text(
                                      "Voce precisa inserir pelo menos o valor total da compra",
                                      style: GoogleFonts.montserrat(),
                                    ),
                                    actions: <Widget>[
                                      CupertinoDialogAction(
                                        child: Text(
                                          "Ok",
                                          style: GoogleFonts.montserrat(),
                                        ),
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                      ),
                                    ],
                                  ));
                        } else {
                          final entraceInput = entraceValueController.text
                              .replaceAll('R\$', '')
                              .replaceAll('.', '')
                              .replaceAll(',', '.');

                          final totalValueInput = totalValueController.text
                              .replaceAll('R\$', '')
                              .replaceAll('.', '')
                              .replaceAll(',', '.');

                          final entrace = double.parse(entraceInput);
                          final total = double.parse(totalValueInput);

                          final result = (total - entrace).toString();

                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => NextPage(
                                result: result,
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class NextPage extends StatefulWidget {
  final String result;
  NextPage({this.result});

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  final List<String> shares = <String>[
    '2x',
    '3x',
    '4x',
    '5x',
    '6x',
    '7x',
    '8x',
    '9x',
    '10x',
    '11x',
    '12x',
  ];

  @override
  Widget build(BuildContext context) {
    final path = 'assets/images/logo1.svg';
    final inputNumber = double.parse(widget.result);

    double debitoAvista = inputNumber + inputNumber * 0.0150;
    double creditoAvista = inputNumber + inputNumber * 0.0350;

    double share1 = inputNumber + inputNumber * 0.0447;
    double share2 = inputNumber + inputNumber * 0.0496;
    double share3 = inputNumber + inputNumber * 0.0544;
    double share4 = inputNumber + inputNumber * 0.0592;
    double share5 = inputNumber + inputNumber * 0.0640;
    double share6 = inputNumber + inputNumber * 0.0738;
    double share7 = inputNumber + inputNumber * 0.0785;
    double share8 = inputNumber + inputNumber * 0.0832;
    double share9 = inputNumber + inputNumber * 0.0879;
    double share10 = inputNumber + inputNumber * 0.0925;
    double share11 = inputNumber + inputNumber * 0.0971;

    double parcela1 = share1 / 2;
    double parcela2 = share2 / 3;
    double parcela3 = share3 / 4;
    double parcela4 = share4 / 5;
    double parcela5 = share5 / 6;
    double parcela6 = share6 / 7;
    double parcela7 = share7 / 8;
    double parcela8 = share8 / 9;
    double parcela9 = share9 / 10;
    double parcela10 = share10 / 11;
    double parcela11 = share11 / 12;

    return Center(
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: Icon(
                      CupertinoIcons.arrow_left,
                      size: 40,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context, '/');
                    },
                  );
                },
              ),
              title: Text(
                'Voltar',
                style:
                    GoogleFonts.montserrat(color: Colors.black, fontSize: 25),
              ),
            ),
            body: ListView(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width / 2.5,
                                child: Center(
                                  child: Text(
                                    'Débito',
                                    style: GoogleFonts.montserrat(
                                      decoration: TextDecoration.none,
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 4),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20),
                                  child: Center(
                                    child: Text(
                                      'R\$ ${(debitoAvista.toStringAsFixed(2)).toString()}',
                                      style: GoogleFonts.montserrat(
                                        shadows: [
                                          Shadow(
                                            offset: Offset(1.5, 1.5),
                                            blurRadius: 1.0,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          ),
                                        ],
                                        decoration: TextDecoration.none,
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Crédito à vista',
                                    style: GoogleFonts.montserrat(
                                      decoration: TextDecoration.none,
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20),
                                  child: Center(
                                    child: Text(
                                      'R\$ ${(creditoAvista.toStringAsFixed(2)).toString()}',
                                      style: GoogleFonts.montserrat(
                                        decoration: TextDecoration.none,
                                        shadows: [
                                          Shadow(
                                            offset: Offset(1.5, 1.5),
                                            blurRadius: 1.0,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          ),
                                        ],
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 5, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0.5, 0.5),
                          blurRadius: 3.0,
                        ),
                      ],
                      color: Colors.red,
                    ),
                    child: Table(
                      defaultColumnWidth: FixedColumnWidth(100),
                      border: TableBorder(
                        horizontalInside: BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 0,
                        ),
                        verticalInside: BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 0.5,
                        ),
                      ),
                      children: [
                        TableRow(
                          children: [
                            Container(
                              height: 70,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0.5, 0.5),
                                      blurRadius: 7.0,
                                    )
                                  ]),
                              child: Text(
                                'Parcelas',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              height: 70,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0.5, 0.5),
                                      blurRadius: 7.0,
                                    )
                                  ]),
                              child: Text(
                                'Valor da\n Parcela',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              height: 70,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0.5, 0.5),
                                      blurRadius: 7.0,
                                    )
                                  ]),
                              child: Text(
                                'Valor Total',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              color: Colors.red,
                              child: Text(
                                shares[0],
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela1.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share1.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                shares[1],
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela2.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share2.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                shares[2],
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela3.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share3.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                shares[3],
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela4.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share4.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                shares[4],
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela5.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share5.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                shares[5],
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela6.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share6.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                shares[6],
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela7.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share7.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                shares[7],
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela8.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share8.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                shares[8],
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela9.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share9.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                shares[9],
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela10.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share10.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                shares[10],
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela11.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share11.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.montserrat(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.5),
                                      blurRadius: 1.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    height: 35,
                    child: SvgPicture.asset(
                      path,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    '@sigamobiletech',
                    style: GoogleFonts.montserrat(
                      decoration: TextDecoration.none,
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
