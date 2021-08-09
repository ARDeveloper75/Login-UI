import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('F3F8FE'),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 110,
              ),
              Center(
                child: CircleAvatar(
                  backgroundColor: HexColor('3D4584'),
                  radius: 50,
                  child: Image.asset(
                    'assets/images/logo.png',
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 120),
              textField(),
              SizedBox(height: 20),
              passwordField(),
              SizedBox(height: 20),
              loginButton(),
            ],
          ),
        ],
      ),
    );
  }

//------- Clean Code--------
//-------- --------

  Widget textField() {
    return Container(
      height: 70,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey),
        ],
      ),
      child: TextField(
        style: GoogleFonts.lato(
            color: HexColor('3D4584'), fontWeight: FontWeight.bold),
        toolbarOptions: ToolbarOptions(
          copy: false,
          paste: false,
          selectAll: false,
        ),
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white54),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white54,
            ),
          ),
          hintText: 'Username@gmail.com',
          hintStyle: GoogleFonts.lato(
            color: HexColor('3D4584'),
          ),
          labelText: 'Email Address',
          labelStyle: GoogleFonts.lato(
            color: HexColor('3D4584'),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          prefixIcon: Icon(
            EvaIcons.emailOutline,
            color: HexColor('3D4584'),
            size: 22,
          ),
          fillColor: Colors.white,
          filled: false,
        ),
      ),
    );
  }

  Widget passwordField() {
    return Container(
      height: 70,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        style: GoogleFonts.lato(
            color: HexColor('3D4584'), fontWeight: FontWeight.bold),
        obscureText: true,
        obscuringCharacter: '*',
        toolbarOptions: ToolbarOptions(
          copy: false,
          paste: false,
          selectAll: false,
        ),
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white54,
              ),
            ),
            labelText: 'Password',
            labelStyle: GoogleFonts.lato(
                color: HexColor('3D4584'),
                fontSize: 18,
                fontWeight: FontWeight.bold),
            hintText: '**********',
            hintStyle: GoogleFonts.lato(
              color: HexColor('3D4584'),
            ),
            fillColor: Colors.white,
            filled: false,
            prefixIcon: Icon(
              Icons.lock_outlined,
              color: HexColor('3D4584'),
              size: 22,
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.visibility_outlined,
                color: Colors.black54,
              ),
            )),
      ),
    );
  }

  Widget loginButton() {
    return Column(
      children: [
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
            color: HexColor('3D4584'),
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextButton(
            onPressed: () {
              print(
                'Login Successfull',
              );
            },
            child: Text(
              'Login',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Signup',
                style: GoogleFonts.lato(
                  color: HexColor('3D4584').withAlpha(180),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Forget Password?',
                style: GoogleFonts.lato(
                  color: HexColor('3D4584').withAlpha(180),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
