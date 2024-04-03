import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:untitled8/core/app_export.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstant.backgroundImg),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(
                100.0,
              ),
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 97.62,
                      height: 66,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.imgDirect21),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'الاشتراك',
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.displaySmall,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFC043D5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3FD3D1D8),
                              blurRadius: 30,
                              offset: Offset(15, 15),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: TextFormField(
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.person_rounded),
                            hintTextDirection: TextDirection.rtl,
                            hintText: 'الاسم',
                            hintStyle: CustomTextStyles.bodyLarge18,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFC043D5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3FD3D1D8),
                              blurRadius: 30,
                              offset: Offset(15, 15),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: TextFormField(
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.person_rounded),
                            hintText: 'اللقب',
                            hintTextDirection: TextDirection.rtl,
                            hintStyle: CustomTextStyles.bodyLarge18,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFC043D5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3FD3D1D8),
                              blurRadius: 30,
                              offset: Offset(15, 15),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.email),
                            hintTextDirection: TextDirection.rtl,
                            hintText: 'البريد الالكتروني',
                            hintStyle: CustomTextStyles.bodyLarge18,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFC043D5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3FD3D1D8),
                              blurRadius: 30,
                              offset: Offset(15, 15),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: IntlPhoneField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              hintTextDirection: TextDirection.rtl,
                              hintText: 'رقم الهاتف',
                              hintStyle: CustomTextStyles.bodyLarge18,
                            ),
                            initialCountryCode: 'EG',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFC043D5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3FD3D1D8),
                              blurRadius: 30,
                              offset: Offset(15, 15),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: TextFormField(
                          obscureText: true,
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.lock),
                            hintText: 'كلمة المرور',
                            hintTextDirection: TextDirection.rtl,
                            hintStyle: CustomTextStyles.bodyLarge18,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFC043D5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3FD3D1D8),
                              blurRadius: 30,
                              offset: Offset(15, 15),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: TextFormField(
                          obscureText: true,
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.lock),
                            hintText: 'تأكيد كلمة المرور',
                            hintTextDirection: TextDirection.rtl,
                            hintStyle: CustomTextStyles.bodyLarge18,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isChecked = !_isChecked;
                                    });
                                  },
                                  child: Text(
                                    'اتفق مع الشروط والاحكام ',
                                    style: CustomTextStyles
                                        .bodyMediumTajawalGray800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _isChecked = !_isChecked;
                              });
                            },
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: _isChecked
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(15),
                                // Make it half of the height to make it round
                                border: Border.all(
                                  color: _isChecked
                                      ? Colors.black
                                      : Colors.black26,
                                  width: 2,
                                ),
                              ),
                              child: _isChecked
                                  ? Icon(
                                      Icons.circle,
                                      size: 10.0,
                                      color: Colors.black,
                                    )
                                  : null,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 50.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Handle sign-up button press
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor: Color(0xFF720D83),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 16),
                                ),
                                child: Text(
                                  'الاشتراك',
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyLarge18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      // Add some space between the button and the text
                      Container(
                        width: 400,
                        margin: EdgeInsets.only(
                          left: 40,
                          right: 46,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "لديك اشتراك بالفعل ؟ ",
                                style:
                                    CustomTextStyles.bodyMediumTajawalff5b5b5e,
                              ),
                              TextSpan(
                                text: "تسجيل الدخول",
                                style:
                                    CustomTextStyles.bodyMediumTajawalff6a1179,
                              )
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6,
                          right: 5,
                          bottom: 37,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 13,
                                bottom: 14,
                              ),
                              child: SizedBox(
                                width: 102,
                                child: Divider(
                                  color: appTheme.gray40001.withOpacity(0.5),
                                ),
                              ),
                            ),
                            Container(
                              width: 151,
                              margin: EdgeInsets.only(left: 2),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "تسجيل الدخول",
                                      style: CustomTextStyles
                                          .bodyMediumTajawalff5b5b5e,
                                    ),
                                    TextSpan(
                                      text: " باسم زائر",
                                      style: CustomTextStyles
                                          .bodyMediumTajawalff6a1179,
                                    )
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 13,
                                bottom: 14,
                              ),
                              child: SizedBox(
                                width: 107,
                                child: Divider(
                                  color: appTheme.gray40001.withOpacity(0.5),
                                  indent: 5,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 22.0, // Adjust the position as needed
          left: 1.0, // Adjust the position as needed
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: GestureDetector(
              onTap: () {
                // Handle the tap action
              },
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child:
                    Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
