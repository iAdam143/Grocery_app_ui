import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app_ui/screens/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              // shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey
              ),
            ),
            child: IconButton(
              // padding: EdgeInsets.all(5),

              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.grey,
                size: 12,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/untitled.png',
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.15,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const Text(
                'Enter your mobile\n number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.normal,
                  height: 1,
                  fontSize: 28,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              const Text(
                'We will send you a verification code',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.normal,
                  height: 1,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CountryCodePicker(
                      onChanged: print,
                      initialSelection: 'PK',
                      showCountryOnly: false,
                      showOnlyCountryWhenClosed: false,
                      showFlag: false,
                      alignLeft: false,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '(000)000-00-00',
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.phone,
                        style: TextStyle(
                          fontFamily: 'DM Sans',
                          //fontWeight: FontWeight.normal,
                          //color: Colors.grey,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.green,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.3,
                    vertical: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'DM Sans',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              const Text(
                'By clicking continue you are agreeing\n to our terms of use',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.normal,
                  height: 1,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
