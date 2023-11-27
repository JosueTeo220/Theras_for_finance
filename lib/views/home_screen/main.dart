import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../menu_empresas/footer.dart';
import 'dart:js' as js;
import '../login_screen/main.dart';
import '../menu_empresas/main.dart';
import '../details_screen/main.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildColumn(context),
             Container(
                height: 50,
                color: const Color(0xFF7063FF),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '© THΞRAS for Finance - APS 2023 - Todos os direitos reservados',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}

Widget _buildColumn(BuildContext context) {
  return Column(
    children: [
      _buildTopContainer(context),
      _buildBottomContainer(),
      _buildTopAbout(context)
    ],
  );
}

Widget _buildTopContainer(BuildContext context) {
  return Stack(children: [
    Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(113, 99, 255, 1),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(200),
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 0.5,
                          child: Image.asset(
                            "assets/company_imagens/iconeTheras.png",
                            width: 100,
                            height: 100,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'T H Ξ R A S',
                          style: TextStyle(fontSize: 26, color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    fontFamily: "Montserrat-Bold",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Análises De Empresas com \n Machine Learning',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        '''Desenvolvemos análises de empresas na bolsa brasileira com modelos de\naprendizado de máquina, com Regressão Polimonial, K-means e Redes Neurais.''',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.7,
                          color: Colors.grey[300],
                        ))
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MenuEmpresas(title: 'T H Ξ R A S'),
                          ),
                        );
                      },
                      child: Container(
                        width: 250,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            (Color(0xff374ABE)),
                            (Color(0xff64B6FF))
                          ]),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Acessar cards gratuitos",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1,
                              fontFamily: "Montserrat-Bold",
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                // ... Outros widgets
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(bottom: 50),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(113, 99, 255, 1),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(300),
                    ),
                  ),
                ),
              ],
            )
          ])),
    ),
    Center(
      child: Container(
          padding: EdgeInsets.only(top: 350, bottom: 50),
          width: MediaQuery.of(context).size.width / 1.25,
          height: MediaQuery.of(context).size.height / 1.25,
          child: Center(
              child: Image.asset(
            "assets/company_imagens/dashboardTHERAS.jpeg",
            scale: 1,
          ))),
    ),
  ]);
}

Widget _buildBottomContainer() {
  final List<String> imageFileNames = [
    "assets/company_imagens/azul.png",
    "assets/company_imagens/itub.png",
    "assets/company_imagens/b3sa.png",
    "assets/company_imagens/cash.png",
    "assets/company_imagens/flry.png",
    "assets/company_imagens/mglu.png",
    "assets/company_imagens/itsa.png",
    "assets/company_imagens/petz.png",
    "assets/company_imagens/sqia.png",
    "assets/company_imagens/sanb.png",
    "assets/company_imagens/asai.png",
    "assets/company_imagens/enju.png",
    "assets/company_imagens/eztc.png",
    "assets/company_imagens/alpa.png",
    "assets/company_imagens/ccro.png",
    "assets/company_imagens/petr.png",
    "assets/company_imagens/lren.png",
    "assets/company_imagens/lwsa.png",
    "assets/company_imagens/ntco.png",
    "assets/company_imagens/mtre.png"
  ];

  return Container(
    color: Color.fromRGBO(250, 250, 250, 1),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Trabalhamos com análises das maiores empresas da bolsa brasileira',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            height: 1.9,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Container(
            width: 1700,
            height: 200,
            child: ImageCarousel(imageFileNames: imageFileNames),
          ),
        ),
      ],
    ),
  );
}

class ImageCarousel extends StatelessWidget {
  final List<String> imageFileNames;
  ImageCarousel({required this.imageFileNames});

  @override
  Widget build(BuildContext context) {
    final groupsOf4 = <List<String>>[];
    for (int i = 0; i < imageFileNames.length; i += 4) {
      groupsOf4.add(imageFileNames.sublist(i, i + 4));
    }

    return CarouselSlider(
      options: CarouselOptions(
        height: 100,
        viewportFraction: 1.0,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 4),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
      items: groupsOf4.map((group) {
        return Row(
          children: group.map((fileName) {
            return Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(fileName),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            );
          }).toList(),
        );
      }).toList(),
    );
  }
}

Widget _buildTopAbout(BuildContext context) {
  return Container(
    color: Color.fromRGBO(250, 250, 250, 1),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Sobre Nós',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 45,
            fontWeight: FontWeight.w900,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 2),
            SizedBox(width: 40),
            Text(
              'Sistema de apoio para\ninvestidores',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Somos estudantes de engenharia da computação, estudamos na faculdade UNIP - Indianópolis em São Paulo Capital. Do nosso time temos alguns integrantes que estão no 7º e 8º semestre, e boa parte do grupo ja está atuando no mercado de trabalho, mas nenhum de nós atua no mercado financeiro.\n\nA Theras é um projeto do nosso trabalho anual do curso de engenharia da computação, onde temos que desenvolver um Sistema de Apoio a Decisão (SAD). A ideia é desenvolver um sistema que ajude na tomada de decisão do investidor iniciante, baseando-se em indicadores financeiros como o lucro líquido, patrimônio, receitas, passivos e ativos.\n\nAtuamos em várias frentes neste projeto, como por exemplo engenharia de software com o desenvolvimento do front com Flutter, arquitetura de back end com a AWS, engenharia de dados e ciência de dados.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    height: 1.7,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 300),
              constraints: BoxConstraints(maxWidth: 1000),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 1,
                    child: Image.asset(
                      'assets/company_imagens/therasYTB.jpeg',
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.4,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      js.context.callMethod('open', [
                        'https://www.youtube.com/channel/UCaJECNjm4dEJHHBAdHCFjzg'
                      ]);
                    },
                    child: Text(
                      'Acessar vídeos',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(113, 99, 255, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: Size(250, 60),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
