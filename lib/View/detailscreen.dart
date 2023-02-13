import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/company_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class DetailScreen extends StatefulWidget {
  int id;
  DetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState(id);
}

class _DetailScreenState extends State<DetailScreen> {
  void launchWhatsApp({
    required int phone,
    required String message,
  }) async {
    String url() {
      if (Platform.isAndroid) {
        return "https://wa.me/$phone/?text=${Uri.parse(message)}";
      } else {
        return "https://api.whatsapp.com/send?phone=$phone=${Uri.parse(message)}";
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }

  Future<void> launchFacebook(String fbUrl, String fbWebUrl) async {
    try {
      bool launched = await launch(fbUrl, forceSafariVC: false);
      print("Launched Native app $launched");

      if (!launched) {
        await launch(fbWebUrl, forceSafariVC: false);
        print("Launched browser $launched");
      }
    } catch (e) {
      await launch(fbWebUrl, forceSafariVC: false);
      print("Inside catch");
    }
  }

  bool _isOpen = false;
  final companydata = Company_model.CompanyModels();
  int id;
  _DetailScreenState(this.id);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
         body: SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.7,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(companydata[id].image),
                  fit: BoxFit.cover,
                ),
              ),
            )),
       
          Positioned(
              top: 50,
              left: 10,
              child: IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                 
                ),
                )),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.5,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: panelBody(),
            ),
          ),
        ],
      ),
    ));
  }

  SingleChildScrollView panelBody() {
    //double hPadding = 40;
    return SingleChildScrollView(
      //controller: controller,
      physics: ClampingScrollPhysics(),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              //mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _titleSection(),
                _infoSection(),
                _actionSection(hPadding: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
                      Row _actionSection({double? hPadding}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Visibility(
          visible: !_isOpen,
          child: Expanded(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.blue),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              onPressed: () {
                if (Platform.isAndroid) {
                  var fbUrl = "fb://facewebmodal/f?href=" +
                      companydata[id].profile; //for android
                  launchFacebook(fbUrl, companydata[id].profile.toString());
                } else if (Platform.isIOS) {
                  var fbUrl =
                      "fb://profile/" + companydata[id].profile; //for IOS
                  launchFacebook(fbUrl, companydata[id].profile.toString());
                }
              },
              child: Text(
                'VIEW PROFILE',
                style: TextStyle(
                  fontFamily: 'NimbusSanL',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: !_isOpen,
          child: SizedBox(
            width: 16,
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: SizedBox(
              width: _isOpen
                  ? (MediaQuery.of(context).size.width - (2 * hPadding!)) / 1.6
                  : double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () => launchWhatsApp(
                    phone: int.parse("${companydata[id].contact}"),
                    message: 'Hello Sir'),
                child: Text(
                  'MESSAGE',
                  style: TextStyle(
                    fontFamily: 'NimbusSanL',
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
          ),
        ),),))),
      ]);
    
  }

  Column _infoSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          companydata[id].description,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontFamily: 'NimbusSanL',
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Column _titleSection() {
    return Column(
      children: <Widget>[
        Text(
          companydata[id].name,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontFamily: 'NimbusSanL',
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          companydata[id].position,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontFamily: 'NimbusSanL',
            fontSize: 18,
          ),
        ),
      ],
    );
}}
