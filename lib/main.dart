import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(MaterialApp(
    title: "Alison Machado",
    home: Main(),
    debugShowCheckedModeBanner: false,
  ));
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

double _opacidade = 0;
double _opacidade_linkedin = 0;
double _opacidade_whats = 0;
double _opacidade_telegram = 0;
double _opacidade_facebook = 0;
double _opacidade_instagram = 0;
double _opacidade_gmail = 0;
double _widthBotao = 50;
double _heightBotao = 50;
double _opacidade_texto = 0.0;
double _opacidade_icone = 1.0;
Color _color = Colors.white;
double raioBotao = 25;
Curve curvaAplicada = Curves.easeInOutQuint;
double escala = 1.0;

class _MainState extends State<Main> with TickerProviderStateMixin{
  
  late final AnimationController _controller_desce_linkedin = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  );//..repeat(reverse: true);

  late final Animation<Offset> _offsetAnimation_desce_linkedin = Tween<Offset>(
    begin: Offset(0.0, 2.0),
    end: Offset(0.0, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller_desce_linkedin,
    curve: Curves.easeInOutQuint,
  ));

  late final AnimationController _controller_desce_whats = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  );//..repeat(reverse: true);

  late final Animation<Offset> _offsetAnimation_desce_whats = Tween<Offset>(
    begin: Offset(0.0, 2.0),
    end: Offset(0.0, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller_desce_whats,
    curve: Curves.easeInOutQuint,
  ));

  late final AnimationController _controller_desce_instagram = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  );//..repeat(reverse: true);

  late final Animation<Offset> _offsetAnimation_desce_instagram = Tween<Offset>(
    begin: Offset(0.0, 2.0),
    end: Offset(0.0, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller_desce_instagram,
    curve: Curves.easeInOutQuint,
  ));

  late final AnimationController _controller_desce_facebook = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  );//..repeat(reverse: true);

  late final Animation<Offset> _offsetAnimation_desce_facebook = Tween<Offset>(
    begin: Offset(0.0, 2.0),
    end: Offset(0.0, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller_desce_facebook,
    curve: Curves.easeInOutQuint,
  ));

  late final AnimationController _controller_desce_telegram = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  );//..repeat(reverse: true);

  late final Animation<Offset> _offsetAnimation_desce_telegram = Tween<Offset>(
    begin: Offset(0.0, 2.0),
    end: Offset(0.0, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller_desce_telegram,
    curve: Curves.easeInOutQuint,
  ));

  late final AnimationController _controller_desce_gmail = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  );//..repeat(reverse: true);

  late final Animation<Offset> _offsetAnimation_desce_gmail = Tween<Offset>(
    begin: Offset(0.0, 2.0),
    end: Offset(0.0, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller_desce_gmail,
    curve: Curves.easeInOutQuint,
  ));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((value) => setState(() {
      _opacidade = 1.0;
      Future.delayed(Duration(seconds: 1)).then((value) => setState(() {
        _controller_desce_linkedin.forward();
        _opacidade_linkedin = 1.0;
        Future.delayed(Duration(milliseconds: 250)).then((value) => setState(() {
          _controller_desce_whats.forward();
          _opacidade_whats = 1.0;
          Future.delayed(Duration(milliseconds: 250)).then((value) => setState(() {
            _controller_desce_telegram.forward();
            _opacidade_telegram = 1.0;
            Future.delayed(Duration(milliseconds: 250)).then((value) => setState(() {
              _controller_desce_instagram.forward();
              _opacidade_instagram = 1.0;
              Future.delayed(Duration(milliseconds: 250)).then((value) => setState(() {
                _controller_desce_facebook.forward();
                _opacidade_facebook = 1.0;
                Future.delayed(Duration(milliseconds: 250)).then((value) => setState(() {
                  _controller_desce_gmail.forward();
                  _opacidade_gmail = 1.0;
                  Future.delayed(Duration(seconds: 1)).then((value) => setState(() {
                    _widthBotao = 600;
                    _heightBotao = 50;
                    Future.delayed(Duration(seconds: 1)).then((value) => setState(() {
                      _opacidade_texto = 1.0;
                      Future.delayed(Duration(seconds: 1)).then((value) => setState(() {
                        _ativar_escala_foto();
                      }));
                    }));
                  }));
                }));
              }));
            }));
          }));
        }));
      }));
    }));
  }

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height/8;
    double largura = MediaQuery.of(context).size.width;

    return Title(
        color: Colors.white,
        title: "Alison Machado",
        child: Scaffold(
            body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/fundo.png'),
                        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.4), BlendMode.modulate,),
                        fit: BoxFit.cover
                    )
                ),
                height: double.infinity,
                width: double.infinity,
                child: AnimatedOpacity(
                  opacity: _opacidade,
                  duration: Duration(seconds: 1),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              AnimatedScale(
                                scale: escala,
                                duration: Duration(seconds: 5),
                                curve: Curves.linear,
                                child: Container(
                                  height: altura,
                                  width: altura,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(altura/2),
                                    child: Image.asset(
                                      'images/alison.png',
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Container(
                                    child: ShaderMask(
                                      shaderCallback: ((bounds) =>
                                          LinearGradient(
                                            colors: <Color>[
                                              Colors.blue.shade900, Colors.lightBlue.shade700, Colors.lightBlue.shade900, Colors.blue.shade900, Colors.lightBlue.shade700
                                            ],
                                          ).createShader(
                                            bounds,
                                          )
                                      ),
                                      child: Text(
                                        "Alison Machado",
                                        style: TextStyle(
                                            fontSize: 34,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white
                                        ),
                                      )
                                    )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Container(
                                    child: Text(
                                      "Contatos:",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue.shade900
                                      ),
                                    )
                                ),
                              ),
                              AnimatedOpacity(
                                opacity: _opacidade_linkedin,
                                duration: Duration(milliseconds: 500),
                                child: SlideTransition(
                                  position: _offsetAnimation_desce_linkedin,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                    child: AnimatedContainer(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.easeInOutQuint,
                                      width: _widthBotao,
                                      height: _heightBotao,
                                      color: Colors.transparent,
                                      child: ElevatedButton(
                                          onPressed: (){
                                            setState(() {
                                              //https://www.linkedin.com/in/alison-luis-machado-643a982a
                                              Uri url = Uri.parse("https://www.linkedin.com/in/alison-luis-machado-643a982a");
                                              abrir_url(url);
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            onPrimary: Colors.blueAccent.withOpacity(0.05),
                                            padding: EdgeInsets.zero,
                                            elevation: 6.0,
                                            primary: _color,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(raioBotao),
                                            ),
                                          ),
                                          child: Padding(
                                              padding: EdgeInsets.all(2),
                                              child: Stack(
                                                children: <Widget>[
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: AnimatedOpacity(
                                                      duration: Duration(seconds: 1),
                                                      opacity: _opacidade_texto,
                                                      curve: Curves.linear,
                                                      child: Text("Linkedin",
                                                        style: TextStyle(
                                                          color: Colors.blue.shade900,
                                                          fontSize: 26,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: AnimatedOpacity(
                                                        duration: Duration(seconds: 1),
                                                        opacity: _opacidade_icone,
                                                        curve: Curves.linear,
                                                        child: Image.asset(
                                                          "images/linkedin.png",
                                                        )
                                                      //child: Icon(Icons.emoji_emotions_outlined, color: Colors.white)
                                                    ),
                                                  ),
                                                ],
                                              )
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              AnimatedOpacity(
                                opacity: _opacidade_whats,
                                duration: Duration(milliseconds: 500),
                                child: SlideTransition(
                                  position: _offsetAnimation_desce_whats,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                    child: AnimatedContainer(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.easeInOutQuint,
                                      width: _widthBotao,
                                      height: _heightBotao,
                                      color: Colors.transparent,
                                      child: ElevatedButton(
                                          onPressed: (){
                                            setState(() {
                                              //https://www.linkedin.com/in/alison-luis-machado-643a982a
                                              Uri url = Uri.parse("https://wa.me/5547999315994");
                                              abrir_url(url);
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            onPrimary: Colors.blueAccent.withOpacity(0.05),
                                            padding: EdgeInsets.zero,
                                            elevation: 6.0,
                                            primary: _color,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(raioBotao),
                                            ),
                                          ),
                                          child: Padding(
                                              padding: EdgeInsets.all(2),
                                              child: Stack(
                                                children: <Widget>[
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: AnimatedOpacity(
                                                      duration: Duration(seconds: 1),
                                                      opacity: _opacidade_texto,
                                                      curve: Curves.linear,
                                                      child: Text("WhatsApp",
                                                        style: TextStyle(
                                                          color: Colors.blue.shade900,
                                                          fontSize: 26,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: AnimatedOpacity(
                                                        duration: Duration(seconds: 1),
                                                        opacity: _opacidade_icone,
                                                        curve: Curves.linear,
                                                        child: Image.asset(
                                                          "images/whats.png",
                                                        )
                                                      //child: Icon(Icons.emoji_emotions_outlined, color: Colors.white)
                                                    ),
                                                  ),
                                                ],
                                              )
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              AnimatedOpacity(
                                opacity: _opacidade_telegram,
                                duration: Duration(milliseconds: 500),
                                child: SlideTransition(
                                  position: _offsetAnimation_desce_telegram,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                    child: AnimatedContainer(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.easeInOutQuint,
                                      width: _widthBotao,
                                      height: _heightBotao,
                                      color: Colors.transparent,
                                      child: ElevatedButton(
                                          onPressed: (){
                                            setState(() {
                                              //https://www.linkedin.com/in/alison-luis-machado-643a982a
                                              Uri url = Uri.parse("https://t.me/alison_machado");
                                              abrir_url(url);
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            onPrimary: Colors.blueAccent.withOpacity(0.05),
                                            padding: EdgeInsets.zero,
                                            elevation: 6.0,
                                            primary: _color,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(raioBotao),
                                            ),
                                          ),
                                          child: Padding(
                                              padding: EdgeInsets.all(2),
                                              child: Stack(
                                                children: <Widget>[
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: AnimatedOpacity(
                                                      duration: Duration(seconds: 1),
                                                      opacity: _opacidade_texto,
                                                      curve: Curves.linear,
                                                      child: Text("Telegram",
                                                        style: TextStyle(
                                                          color: Colors.blue.shade900,
                                                          fontSize: 26,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: AnimatedOpacity(
                                                        duration: Duration(seconds: 1),
                                                        opacity: _opacidade_icone,
                                                        curve: Curves.linear,
                                                        child: Image.asset(
                                                          "images/telegram.png",
                                                        )
                                                      //child: Icon(Icons.emoji_emotions_outlined, color: Colors.white)
                                                    ),
                                                  ),
                                                ],
                                              )
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              AnimatedOpacity(
                                opacity: _opacidade_instagram,
                                duration: Duration(milliseconds: 500),
                                child: SlideTransition(
                                  position: _offsetAnimation_desce_instagram,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                    child: AnimatedContainer(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.easeInOutQuint,
                                      width: _widthBotao,
                                      height: _heightBotao,
                                      color: Colors.transparent,
                                      child: ElevatedButton(
                                          onPressed: (){
                                            setState(() {
                                              //https://www.linkedin.com/in/alison-luis-machado-643a982a
                                              Uri url = Uri.parse("https://instagram.com/alisonlmachado?r=nametag");
                                              abrir_url(url);
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            onPrimary: Colors.blueAccent.withOpacity(0.05),
                                            padding: EdgeInsets.zero,
                                            elevation: 6.0,
                                            primary: _color,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(raioBotao),
                                            ),
                                          ),
                                          child: Padding(
                                              padding: EdgeInsets.all(2),
                                              child: Stack(
                                                children: <Widget>[
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: AnimatedOpacity(
                                                      duration: Duration(seconds: 1),
                                                      opacity: _opacidade_texto,
                                                      curve: Curves.linear,
                                                      child: Text("Instagram",
                                                        style: TextStyle(
                                                          color: Colors.blue.shade900,
                                                          fontSize: 26,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: AnimatedOpacity(
                                                        duration: Duration(seconds: 1),
                                                        opacity: _opacidade_icone,
                                                        curve: Curves.linear,
                                                        child: Image.asset(
                                                          "images/instagram.png",
                                                        )
                                                      //child: Icon(Icons.emoji_emotions_outlined, color: Colors.white)
                                                    ),
                                                  ),
                                                ],
                                              )
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              AnimatedOpacity(
                                opacity: _opacidade_facebook,
                                duration: Duration(milliseconds: 500),
                                child: SlideTransition(
                                  position: _offsetAnimation_desce_facebook,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                    child: AnimatedContainer(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.easeInOutQuint,
                                      width: _widthBotao,
                                      height: _heightBotao,
                                      color: Colors.transparent,
                                      child: ElevatedButton(
                                          onPressed: (){
                                            setState(() {
                                              //https://www.linkedin.com/in/alison-luis-machado-643a982a
                                              Uri url = Uri.parse("https://www.facebook.com/alison.machado.37454");
                                              abrir_url(url);
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            onPrimary: Colors.blueAccent.withOpacity(0.05),
                                            padding: EdgeInsets.zero,
                                            elevation: 6.0,
                                            primary: _color,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(raioBotao),
                                            ),
                                          ),
                                          child: Padding(
                                              padding: EdgeInsets.all(2),
                                              child: Stack(
                                                children: <Widget>[
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: AnimatedOpacity(
                                                      duration: Duration(seconds: 1),
                                                      opacity: _opacidade_texto,
                                                      curve: Curves.linear,
                                                      child: Text("Facebook",
                                                        style: TextStyle(
                                                          color: Colors.blue.shade900,
                                                          fontSize: 26,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: AnimatedOpacity(
                                                        duration: Duration(seconds: 1),
                                                        opacity: _opacidade_icone,
                                                        curve: Curves.linear,
                                                        child: Image.asset(
                                                          "images/facebook.png",
                                                        )
                                                      //child: Icon(Icons.emoji_emotions_outlined, color: Colors.white)
                                                    ),
                                                  ),
                                                ],
                                              )
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              AnimatedOpacity(
                                opacity: _opacidade_gmail,
                                duration: Duration(milliseconds: 500),
                                child: SlideTransition(
                                  position: _offsetAnimation_desce_gmail,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
                                    child: AnimatedContainer(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.easeInOutQuint,
                                      width: _widthBotao,
                                      height: _heightBotao,
                                      color: Colors.transparent,
                                      child: ElevatedButton(
                                          onPressed: (){
                                            setState(() {
                                              //https://www.linkedin.com/in/alison-luis-machado-643a982a
                                              Uri url = Uri.parse("mailto:alison.luis.machado@gmail.com");
                                              abrir_url(url);
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            onPrimary: Colors.blueAccent.withOpacity(0.05),
                                            padding: EdgeInsets.zero,
                                            elevation: 6.0,
                                            primary: _color,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(raioBotao),
                                            ),
                                          ),
                                          child: Padding(
                                              padding: EdgeInsets.all(2),
                                              child: Stack(
                                                children: <Widget>[
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: AnimatedOpacity(
                                                      duration: Duration(seconds: 1),
                                                      opacity: _opacidade_texto,
                                                      curve: Curves.linear,
                                                      child: Text("Gmail",
                                                        style: TextStyle(
                                                          color: Colors.blue.shade900,
                                                          fontSize: 26,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: AnimatedOpacity(
                                                        duration: Duration(seconds: 1),
                                                        opacity: _opacidade_icone,
                                                        curve: Curves.linear,
                                                        child: Image.asset(
                                                          "images/gmail.png",
                                                        )
                                                      //child: Icon(Icons.emoji_emotions_outlined, color: Colors.white)
                                                    ),
                                                  ),
                                                ],
                                              )
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                  ),
                )
            )
        )
    );
  }
  abrir_url(Uri url) async{
    if (await canLaunchUrl(url))
      await launchUrl(url);
    else
      throw "Não foi possível abrir a página";
  }
  _ativar_escala_foto(){
    Future.delayed(Duration(seconds: 5)).then((value) => setState(() {
      escala = 1.2;
      Future.delayed(Duration(seconds: 5)).then((value) => setState(() {
        escala = 1.0;
        _ativar_escala_foto();
      }));
    }));
  }
}

