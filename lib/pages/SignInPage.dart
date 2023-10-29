import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Iniciar Sesión",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20,
              ),
              buttonItem("assets/google.svg", "Ingresar con Google", 25),
              SizedBox(
                height: 15,
              ),
              buttonItem("assets/phone.svg", "Ingresar con celular", 30),
              SizedBox(
                height: 15,
              ),
              Text(
                "O",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              textItem("Correo electronico"),
              SizedBox(
                height: 15,
              ),
              textItem("Contraseña"),
              SizedBox(
                height: 30,
              ),
              colorButton(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "No estas registrado?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Iniciar sesión",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Olvidaste tu contraseña?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget colorButton() {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [
            Color(0xfffd746c),
            Color(0xffff9068),
            Color(0xfffd746c)
          ])),
      child: Center(
        child: Text(
          "Resgistrarse",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget buttonItem(String imagepath, String buttonName, double size) {
    return Container(
        width: MediaQuery.of(context).size.width - 60,
        height: 60,
        child: Card(
          color: Colors.black,
          elevation: 8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                width: 1,
                color: Colors.grey,
              )),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SvgPicture.asset(
              imagepath,
              height: size,
              width: size,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              buttonName,
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ]),
        ));
  }

  Widget textItem(String labeltext) {
    return Container(
      width: MediaQuery.of(context).size.width - 70,
      height: 55,
      child: TextFormField(
        decoration: InputDecoration(
            labelText: labeltext,
            labelStyle: TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.grey,
                ))),
      ),
    );
  }
}
