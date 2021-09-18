import 'package:d_ecom/feature/auth/login/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class registrationPage extends StatefulWidget {
  @override
  _registrationPageState createState() => _registrationPageState();
}

class _registrationPageState extends State<registrationPage> {


  TextEditingController mobileNoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  String mobileNo, email, name;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
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
                    'Create Account',
                    style: GoogleFonts.poppins(
                      color: Colors.black.withOpacity(0.85),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Form(
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: nameController,
                          textAlignVertical: TextAlignVertical.center,
                          validator: (String val) {
                            if (val.isEmpty) {
                              return 'Full name is required';
                            }
                            return null;
                          },
                          onSaved: (val) {
                            name = val;
                          },
                          enableInteractiveSelection: false,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14.5,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5,
                          ),
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.words,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            helperStyle: GoogleFonts.poppins(
                              color: Colors.black.withOpacity(0.65),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
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
                              Icons.person,
                            ),
                            prefixIconConstraints: BoxConstraints(
                              minWidth: 50.0,
                            ),
                            labelText: 'Full name',
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
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
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
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          controller: emailController,
                          textAlignVertical: TextAlignVertical.center,
                          validator: (String val) {
                            if (val.trim().isEmpty) {
                              return 'Email Address is required';
                            }
                            if (!RegExp(
                                r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$")
                                .hasMatch(val)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                          onSaved: (val) {
                            email = val;
                          },
                          enableInteractiveSelection: false,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14.5,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5,
                          ),
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            helperStyle: GoogleFonts.poppins(
                              color: Colors.black.withOpacity(0.65),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
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
                              Icons.email,
                            ),
                            prefixIconConstraints: BoxConstraints(
                              minWidth: 50.0,
                            ),
                            labelText: 'Email address',
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                    child: Text(
                      'By signing up you\'re accepting the Terms and Conditions',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: Container(
                      width: size.width,
                      height: 48.0,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        color: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                  buildGoogleSignupButton(size),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGoogleSignupButton(Size size) {
    return Center(
      child:  Container(
        width: size.width,
        height: 48.0,
        child: FlatButton (
          onPressed: () {
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
              Icon(FontAwesomeIcons.google,
               // Icons.email_outlined,
                color: Colors.white,
                size: 20.0,
              ),
              SizedBox(
                width: 12.0,
              ),
              Text(
                'Sign up with Google',
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
}
