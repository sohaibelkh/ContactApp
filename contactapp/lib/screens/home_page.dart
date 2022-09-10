import 'package:contactapp/constants/colors.dart';
import 'package:contactapp/services/firebase.dart';
import 'package:contactapp/widgets/direct_call.dart';
import 'package:contactapp/widgets/whatsapp_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 20),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w500,
                    color: darkBlueColor,
                    fontSize : 14.sp,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 2,
                color: darkBlueColor,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
               DirectCallButton(
                onTap: () async {
                 FlutterPhoneDirectCaller.callNumber(await getNum1());
               },),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
               DirectCallButton(
                onTap: (() async {
                  FlutterPhoneDirectCaller.callNumber(await getNum2());
                }),
               ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
               WhatsappButton(),
            ],
          ),
        ),
      ),
    );
  }
}
