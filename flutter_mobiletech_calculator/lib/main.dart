import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Select A Location',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  String actualLocation = '';
  final inputController = TextEditingController();

  Widget selectLocationWidget() {
    return Column(
      children: <Widget>[
        Container(
          width: 300,
          decoration: BoxDecoration(
            color: Colors.red[800],
          ),
          child: TextField(
            controller: inputController,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Digite aqui',
                hintStyle: TextStyle(color: Colors.grey[200])),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final path = 'assets/images/logo1.svg';

    return Scaffold(
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
                  style: GoogleFonts.sourceSansPro(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Digite abaixo o valor da entrada',
                textAlign: TextAlign.center,
                style: GoogleFonts.sourceSansPro(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              selectLocationWidget(),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: 150,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.red[800],
                  child: Text(
                    'Simular',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NextPage(
                            locationText: inputController.text,
                          ),
                        ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  final String locationText;
  NextPage({this.locationText});

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
    final path = 'assets/images/logo.svg';
    final inputNumber = double.parse(widget.locationText);

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
          Image.asset(
            'images/template.png',
            fit: BoxFit.cover,
          ),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red[800],
              title: Text(
                'Parcelamento',
                style: GoogleFonts.sourceSansPro(
                  decoration: TextDecoration.none,
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
            ),
            body: ListView(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red[800],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Debito a vista',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'R\$ ${(debitoAvista.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                'Credito a vista',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'R\$ ${(creditoAvista.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10, top: 20, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red[800],
                    ),
                    child: Table(
                      defaultColumnWidth: FixedColumnWidth(150.0),
                      border: TableBorder(
                        horizontalInside: BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 0.5,
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
                              decoration: BoxDecoration(),
                              height: 70,
                              alignment: Alignment.center,
                              child: Text(
                                'Parcelas',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 70,
                              alignment: Alignment.center,
                              child: Text(
                                'Valor da Parcela',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 70,
                              alignment: Alignment.center,
                              child: Text(
                                'Valor Total',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
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
                              child: Text(
                                shares[0],
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela1.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share1.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
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
                              child: Text(
                                shares[1],
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela2.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share2.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
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
                              child: Text(
                                shares[2],
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela3.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share3.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
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
                              child: Text(
                                shares[3],
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela4.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share4.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
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
                              child: Text(
                                shares[4],
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela5.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share5.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
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
                              child: Text(
                                shares[5],
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela6.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share6.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
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
                              child: Text(
                                shares[6],
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela7.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share7.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
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
                              child: Text(
                                shares[7],
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela8.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share8.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
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
                              child: Text(
                                shares[8],
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela9.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share9.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
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
                              child: Text(
                                shares[9],
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela10.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share10.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
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
                              child: Text(
                                shares[10],
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(parcela11.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Text(
                                'R\$ ${(share11.toStringAsFixed(2)).toString()}',
                                style: GoogleFonts.sourceSansPro(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
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
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 70,
                    child: SvgPicture.asset(
                      path,
                      color: Colors.red[800],
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    '@sigamobiletech',
                    style: GoogleFonts.sourceSansPro(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
