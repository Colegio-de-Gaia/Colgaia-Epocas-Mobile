import 'package:colgaia_convento/widgets/Drawer.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          "Ajuda".toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        elevation: 0.0,
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                "Como usar a aplicação?",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700, color: Theme.of(context).accentColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0.0),
              child: Text(
                "Cada época tem uma certa duração, que pode ser vista no calendário, e este calendário é a parte principal da aplicação.\n\nExperimente aceder ao calendário clicando no menu em cima (perto de 'AJUDA') e clique na secção que diz 'Calendário'.\n\nAo clicar no calendário verá uma série de dias, também clicáveis. Nestes dias vai encontrar um desenho feito por alunos do colégio, um trecho da Bíblia, uma reflexão e, por fim, uma oração.\n\nSe quiser pode ainda ter uma contextualização da época ao abrir o menu (ao lado de 'AJUDA') e clicar na aba 'Sobre a aplicação'.",
                style: TextStyle(fontSize: 17.0, color: Colors.grey),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}
