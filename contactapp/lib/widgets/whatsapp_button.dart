
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contactapp/constants/colors.dart';
import 'package:contactapp/services/firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_storage/firebase_storage.dart';


class WhatsappButton extends StatelessWidget {
   WhatsappButton({Key? key}) : super(key: key);

  void launchWhatsapp({@required number}) async {
    String url = 'https://wa.me/$number?text=Salut';
    if(await canLaunchUrl(Uri.parse(url))){
      await launchUrl(Uri.parse(url));
    }else{
      throw('Error occured');
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        launchWhatsapp(number: await getWtspNum());
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: greenColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.whatsapp,
              size: 30,
              color: Colors.white,
            ),
            Text(
              'Allez Sur Whatsapp',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w500,
                fontSize : 16.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


