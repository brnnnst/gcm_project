import 'package:projectgcm/pages/denuncia-rural.page.dart';
import 'package:projectgcm/pages/denuncia-urbana.page.dart';
import 'package:flutter/material.dart';
import 'package:projectgcm/pages/mariapenha.page.dart';
import 'package:nice_button/nice_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

var firstColor = Color(0xFF5b86e5);
var secondColor = Color(0xFF5b86e5);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página principal"),
        centerTitle: true,
        backgroundColor: Color(0xFF5b86e5),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Bruno"),
              accountEmail: new Text("Bruno@fatec.sp.gov.br"),
              currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://media.giphy.com/media/PSKAppO2LH56w/giphy.gif')),
            ),

            //Drawer listas

            ListTile(
              leading: Icon(Icons.assignment_ind),
              title: Text("Meu Perfil"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.assignment_late),
              title: Text("Minhas Denúncias"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text("Quem somos"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("Sair"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFfafafa), Color(0xFFfafafa)])),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            //Botão maria da penha home page

            NiceButton(
              radius: 40,
              padding: const EdgeInsets.all(20),
              text: "Maria da Penha",
              icon: Icons.pregnant_woman,
              gradientColors: [secondColor, firstColor],
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MariaPenha(),
                    ));
              },
              background: null,
            ),

            //Botão denunca urbana home page

            NiceButton(
              radius: 40,
              padding: const EdgeInsets.all(19),
              text: "Denúncia Urbana",
              icon: Icons.home,
              gradientColors: [secondColor, firstColor],
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DenunciaUrbana(),
                    ));
              },
              background: null,
            ),

            //Botao denuncia rural home page

            NiceButton(
              radius: 40,
              padding: const EdgeInsets.all(20),
              text: "Denúncia Rural",
              icon: Icons.public,
              gradientColors: [secondColor, firstColor],
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DenunciaRural(),
                    ));
              },
              background: null,
            ),
          ],
        ),
      ),
    );
  }
}
