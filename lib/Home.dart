import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              minWidth: 300,
              maxWidth: 600,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 0,
                  ),
                  child: Text(
                    'Stories',
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          fontSize: 50.0,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5.0,
                  ),
                  child: Text(
                    'Stories est en cours développement.',
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5.0,
                  ),
                  child: Text(
                    "Mais bonne nouvelle, vous pouvez avoir un avant goût en téléchargent l'application de lancement.",
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5.0,
                  ),
                  child: Text(
                    "Rejoignez-nous dans cette aventure, et suivez l'évolution de Stories, en cliquant sur le bouton juste en dessous.",
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 70,
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      child: Image.asset(
                        'assets/images/play-store.png',
                      ),
                      onTap: () => launch(
                          'https://play.google.com/store/apps/details?id=fans.stories.app'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5.0,
                  ),
                  child: Text(
                    "Seulement 1 000 téléchargements sont disponibles, alors dépêchez-vous...",
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontStyle: FontStyle.italic,
                          fontSize: 12,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
