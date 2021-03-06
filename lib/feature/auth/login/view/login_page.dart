import 'package:d_ecom/feature/auth/registration/view/registration_page.dart';
import 'package:d_ecom/feature/home/view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController mobileNoController = TextEditingController();

  String mobileNo;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200.0,
              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.green[800],
                    Colors.green[400],
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: Image.asset(
                'assets/app_logo.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              height: size.height - 200.0,
              width: size.width,
              padding:
              const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                children: <Widget>[
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Welcome',
                    style: GoogleFonts.poppins(
                      color: Colors.black.withOpacity(0.85),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Sign in and get all the groceries at your doorstep',
                    style: GoogleFonts.poppins(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 14.5,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Form(
                    child: TextFormField(
                      controller: mobileNoController,
                      textAlignVertical: TextAlignVertical.center,
                      validator: (String val) {
                        if (val.isEmpty) {
                          return 'Mobile No. is required';
                        } else if (val.length != 10) {
                          return 'Mobile No. is invalid';
                        }
                        return null;
                      },
                      onSaved: (val) {
                        mobileNo = val;
                      },
                      enableInteractiveSelection: false,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14.5,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                      ),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        helperStyle: GoogleFonts.poppins(
                          color: Colors.black.withOpacity(0.65),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                        prefixText: '+91 ',
                        prefixStyle: GoogleFonts.poppins(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.5,
                        ),
                        errorStyle: GoogleFonts.poppins(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                        hintStyle: GoogleFonts.poppins(
                          color: Colors.black54,
                          fontSize: 14.5,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                        prefixIcon: Icon(
                          Icons.phone,
                        ),
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 50.0,
                        ),
                        labelText: 'Mobile no.',
                        labelStyle: GoogleFonts.poppins(
                          fontSize: 14.5,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  buildSignInButton(size, context),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Divider(
                              color: Colors.black54,
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              'OR',
                              style: GoogleFonts.poppins(
                                color: Colors.black54,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  buildGoogleSignInButton(size),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        'Don\'t have an account?',
                        style: GoogleFonts.poppins(
                          color: Colors.black54,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => registrationPage()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSignInButton(Size size, BuildContext context) {
    return Center(
      child: Container(
        width: size.width,
        height: 48.0,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          color: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            'Sign In',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildGoogleSignInButton(Size size) {
    return Center(
      child: Container(
        width: size.width,
        height: 48.0,
        child: FlatButton(
          onPressed: () {
            //Navigate to homepage
          },
          color: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.google,
                color: Colors.white,
                size: 20.0,
              ),
              SizedBox(
                width: 12.0,
              ),
              Text(
                'Sign in with Google',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 /* void signInWithMobile() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      mobileNo = '+91$mobileNo';
      signinBloc.add(CheckIfBlocked(mobileNo));
      inProgress = true;
    }
  }*/
}
