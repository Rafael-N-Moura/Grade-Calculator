import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  var nota1 = 0.0;
  var nota2 = 0.0;
  var tde1 = 0.0;
  var nota3 = 0.0;
  var nota4 = 0.0;
  var tde2 = 0.0;
  var aval1 = 0.0;
  var aval2 = 0.0;
  var nFinal = 0.0;

  void calcular_aval1() {
    setState(
      () {
        aval1 = (nota1 * 0.6) + (nota2 * 0.2) + (tde1 * 0.2);
        calcular_nFinal();
      },
    );
  }

  void calcular_aval2() {
    setState(
      () {
        aval2 = (nota3 * 0.6) + (nota4 * 0.2) + (tde2 * 0.2);
        calcular_nFinal();
      },
    );
  }

  void calcular_nFinal() {
    setState(
      () {
        nFinal = (aval1 + aval2) / 2;
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de Notas"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              child: Text(
                'Avaliação 1',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 80,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextFormField(
                  // initialValue: "${product.price.toStringAsFixed(2)}",
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                  decoration: const InputDecoration(
                      hintText: 'Nota 1', border: InputBorder.none),
                  validator: (price) {
                    if (num.tryParse(price) == null) return 'Inválido';
                    return null;
                  },
                  onChanged: (price) {
                    setState(() {
                      //nota1 = num.tryParse(price) as double;
                      nota1 = num.tryParse(price)?.toDouble() ?? 0;
                      calcular_aval1();
                    });
                  },
                ),
              ),
              Container(
                height: 60,
                width: 80,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextFormField(
                  // initialValue: "${product.price.toStringAsFixed(2)}",
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                  decoration: const InputDecoration(
                      hintText: 'Nota 2', border: InputBorder.none),
                  validator: (price) {
                    if (num.tryParse(price) == null) return 'Inválido';
                    return null;
                  },
                  onChanged: (price) {
                    setState(() {
                      //nota1 = num.tryParse(price) as double;
                      nota2 = num.tryParse(price)?.toDouble() ?? 0;
                      calcular_aval1();
                    });
                  },
                ),
              ),
              Container(
                height: 60,
                width: 80,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextFormField(
                  // initialValue: "${product.price.toStringAsFixed(2)}",
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                  decoration: const InputDecoration(
                      hintText: 'TDE 1', border: InputBorder.none),
                  validator: (price) {
                    if (num.tryParse(price) == null) return 'Inválido';
                    return null;
                  },
                  onChanged: (price) {
                    setState(() {
                      //nota1 = num.tryParse(price) as double;
                      tde1 = num.tryParse(price)?.toDouble() ?? 0;
                      calcular_aval1();
                    });
                  },
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              child: Text(
                'Avaliação 2',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 80,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextFormField(
                  // initialValue: "${product.price.toStringAsFixed(2)}",
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                  decoration: const InputDecoration(
                      hintText: 'Nota 3', border: InputBorder.none),
                  validator: (price) {
                    if (num.tryParse(price) == null) return 'Inválido';
                    return null;
                  },
                  onChanged: (price) {
                    setState(() {
                      //nota1 = num.tryParse(price) as double;
                      nota3 = num.tryParse(price)?.toDouble() ?? 0;
                      calcular_aval2();
                    });
                  },
                ),
              ),
              Container(
                height: 60,
                width: 80,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextFormField(
                  // initialValue: "${product.price.toStringAsFixed(2)}",
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                  decoration: const InputDecoration(
                      hintText: 'Nota 4', border: InputBorder.none),
                  validator: (price) {
                    if (num.tryParse(price) == null) return 'Inválido';
                    return null;
                  },
                  onChanged: (price) {
                    setState(() {
                      //nota1 = num.tryParse(price) as double;
                      nota4 = num.tryParse(price)?.toDouble() ?? 0;
                      calcular_aval2();
                    });
                  },
                ),
              ),
              Container(
                height: 60,
                width: 80,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextFormField(
                  // initialValue: "${product.price.toStringAsFixed(2)}",
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                  decoration: const InputDecoration(
                      hintText: 'TDE 2', border: InputBorder.none),
                  validator: (price) {
                    if (num.tryParse(price) == null) return 'Inválido';
                    return null;
                  },
                  onChanged: (price) {
                    setState(() {
                      //nota1 = num.tryParse(price) as double;
                      tde2 = num.tryParse(price)?.toDouble() ?? 0;
                      calcular_aval2();
                    });
                  },
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              child: Text(
                'Resultados',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '${aval1.toStringAsFixed(2)}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Text('Avaliação 1'),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '${aval2.toStringAsFixed(2)}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Text('Avaliação 2'),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '${nFinal.toStringAsFixed(2)}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Text('Final'),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          if (nFinal >= 7)
            Align(
              alignment: Alignment.center,
              child: Text(
                "Aprovado",
                style: TextStyle(color: Colors.green, fontSize: 40),
              ),
            ),
          if (nFinal < 7)
            Align(
              alignment: Alignment.center,
              child: Text(
                "Provinha",
                style: TextStyle(color: Colors.yellow, fontSize: 40),
              ),
            ),
        ],
      ),
    );
  }
}
