import 'package:flutter/material.dart';
import 'grafico_linear.dart';
import '../menu_empresas/footer.dart';

class DetailsScreen extends StatelessWidget {
  final String cardIndex;
  final double breakpoint = 800;
  final int paneProportion = 50;

  DetailsScreen(this.cardIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(8, 32, 50, 50),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.report),
              onPressed: () {},
            ),
          ],
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'THΞRAS',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Flex(direction: Axis.horizontal, children: [
              Flexible(
                  flex: 6,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: Row(
                          children: [
                            Flex(
                              direction: Axis.vertical,
                              children: [
                                const Text("Último Resultado: Mar-2023"),
                                borderedContainer(cardIndex,
                                    fontSize: 36,
                                    padding: const EdgeInsets.fromLTRB(
                                        40, 20, 40, 20))
                              ],
                            ),
                            const Spacer(),
                            Flex(
                              direction: Axis.vertical,
                              children: [
                                const Text(
                                  "Preço",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    PriceCard("Lower", "15,50"),
                                    PriceCard("Médio", "20,01"),
                                    PriceCard("High", "26,79"),
                                    borderedContainer("Bom",
                                        color: Colors.green,
                                        corTexto: Colors.white,
                                        padding:
                                            EdgeInsets.fromLTRB(10, 20, 10, 20),
                                        margin: EdgeInsets.only(left: 30)),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      borderedContainer("Nome: Azul Linhas Aéreas",
                          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                          alignment: Alignment.centerLeft),
                      borderedContainer("Setor: Aviação",
                          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                          alignment: Alignment.centerLeft),
                      borderedContainer("Indicadores Relativos",
                          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15)),
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          Flexible(
                              flex: 4,
                              child: Flex(
                                direction: Axis.vertical,
                                children: [
                                  borderedContainer("Últimos Resultados",
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 15, 10, 15)),
                                  borderedContainer("P/L: 5.10",
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5)),
                                  borderedContainer("DY: 6%",
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5)),
                                  borderedContainer("ROE: 5%",
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5)),
                                  borderedContainer("Marg. Liqui: -5%",
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5)),
                                  borderedContainer("EBITDA: 6%",
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5)),
                                  borderedContainer("Ind. Dívida: 2%",
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5)),
                                ],
                              )),
                          Flexible(
                              flex: 4,
                              child: Flex(
                                direction: Axis.vertical,
                                children: [
                                  borderedContainer("Previsão próximo ano",
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 15, 10, 15)),
                                  borderedContainer("P/L: 5.10",
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5)),
                                  borderedContainer("DY: 6%",
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5)),
                                  borderedContainer("ROE: 5%",
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5)),
                                  borderedContainer("Marg. Liqui: -5%",
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5)),
                                  borderedContainer("EBITDA: 6%",
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5)),
                                  borderedContainer("Ind. Dívida: 2%",
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5)),
                                ],
                              ))
                        ],
                      )
                    ],
                  )),
              const Spacer(
                flex: 1,
              ),
              Flexible(
                  flex: 6,
                  child: Column(
                    children: [
                      Row(),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              // margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                              flex: 20,
                              child: Flex(
                                direction: Axis.vertical,
                                children: [
                                  borderedContainer("MultiChart",
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 15, 10, 15),
                                      margin: const EdgeInsets.only(bottom: 7),
                                      alignment: Alignment.centerLeft,
                                      color: Colors.black,
                                      corTexto: Colors.white,
                                      flexible: true),
                                  borderedContainer("Visão",
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 15, 10, 15),
                                      margin: const EdgeInsets.only(bottom: 7),
                                      alignment: Alignment.centerLeft,
                                      flexible: true),
                                  borderedContainer("Indicadores",
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 15, 10, 15),
                                      margin: const EdgeInsets.only(bottom: 7),
                                      alignment: Alignment.centerLeft,
                                      flexible: true),
                                  borderedContainer("Períodos",
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 15, 10, 15),
                                      margin: const EdgeInsets.only(bottom: 7),
                                      alignment: Alignment.centerLeft,
                                      flexible: true),
                                  borderedContainer("Comparador",
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 15, 10, 15),
                                      alignment: Alignment.centerLeft,
                                      flexible: true),
                                ],
                              ),
                            ),
                            const Spacer(
                              flex: 2,
                            ),
                            Expanded(
                                flex: 60,
                                child: Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black87),
                                    ),
                                    child: SizedBox(
                                      height: 300,
                                      // width: 100,
                                      child: GraficoLinear(),
                                    )))
                          ]),
                      Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Flex(
                            direction: Axis.horizontal,
                            children: [
                              Flexible(
                                  child: Flex(
                                direction: Axis.vertical,
                                children: [
                                  borderedContainer("Valor para investir",
                                      color: Colors.black,
                                      corTexto: Colors.white,
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 5, 20, 5)),
                                  borderedContainer("Visão: RAROC",
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 5, 20, 5)),
                                  borderedContainer(
                                      "150 Mil\n\nDif Taxa Juros: 10 Mil",
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 5, 20, 5),
                                      textAlignment: TextAlign.center),
                                ],
                              )),
                              Flexible(
                                  child: Flex(
                                direction: Axis.vertical,
                                children: [
                                  borderedContainer("Valor para investir",
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 95, 20, 5)),
                                  borderedContainer("Melhor investir em ações",
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 5, 20, 5),
                                      fontSize: 12,
                                      color: Colors.green,
                                      corTexto: Colors.white),
                                ],
                              )),
                              Flexible(
                                  child: Flex(
                                direction: Axis.vertical,
                                children: [
                                  borderedContainer("",
                                      element: const Flex(
                                        direction: Axis.horizontal,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "14%",
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Spacer(),
                                          Flexible(
                                              flex: 3,
                                              child: Text(
                                                "Taxa de Juros",
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                        ],
                                      ),
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 5, 10)),
                                  borderedContainer("",
                                      element: const Flex(
                                        direction: Axis.horizontal,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "3%",
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Spacer(),
                                          Flexible(
                                            flex: 3,
                                            child: Text(
                                              "Risco do Investimento",
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 5, 10)),
                                  borderedContainer("",
                                      element: const Flex(
                                        direction: Axis.horizontal,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "20%",
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Spacer(),
                                          Flexible(
                                            flex: 3,
                                            child: Text(
                                              "Retorno do Investimento",
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 5, 10)),
                                ],
                              )),
                            ],
                          ))
                    ],
                  ))
            ])));
  }
}

class PriceCard extends StatelessWidget {
  final String label;
  final String price;
  const PriceCard(this.label, this.price, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        key: super.key,
        child: Column(children: [
          Text(
            label,
            style: const TextStyle(fontSize: 20),
          ),
          Text(price, style: const TextStyle(fontSize: 20)),
        ]));
  }
}

borderedContainer(String text,
    {EdgeInsets padding = const EdgeInsets.all(0),
    EdgeInsets margin = const EdgeInsets.all(0),
    double fontSize = 20,
    Alignment alignment = Alignment.center,
    TextAlign? textAlignment,
    Color color = Colors.transparent,
    Color corTexto = Colors.black,
    bool flexible = false,
    Widget? element}) {
  Wrap wrap = Wrap(alignment: WrapAlignment.spaceBetween, children: [
    Align(
        alignment: alignment,
        child: element ??
            Text(text,
                textAlign: textAlignment ?? TextAlign.start,
                style: TextStyle(fontSize: fontSize, color: corTexto)))
  ]);
  BoxDecoration decoration = BoxDecoration(
    border: Border.all(color: Colors.black87),
    color: color,
  );
  Container containerGeral = Container(
      padding: padding, margin: margin, decoration: decoration, child: wrap);
  return Theme(
    data: ThemeData(
        textTheme: TextTheme(
      displaySmall: TextStyle(color: corTexto, fontSize: fontSize),
      displayMedium: TextStyle(color: corTexto, fontSize: fontSize),
      displayLarge: TextStyle(color: corTexto, fontSize: fontSize),
    )),
    child: containerGeral,
  );
}
