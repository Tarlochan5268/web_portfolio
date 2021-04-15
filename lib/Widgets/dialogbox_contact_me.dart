//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/size_config.dart';

import 'custom_formfields.dart';

class DialogBoxContactMe extends StatefulWidget {
  @override
  _DialogBoxContactMeState createState() => _DialogBoxContactMeState();
}

class _DialogBoxContactMeState extends State<DialogBoxContactMe> {
  //final firestoreInstance = FirebaseFirestore.instance;
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailIdController = TextEditingController();
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 1,
      backgroundColor: Colors.transparent,
      child: Form(
        key: _formKey,
        child: Center(
          child: Container(
            height: SizeConfig.heightProportionate(context, 50),
            width: SizeConfig.widthProportionate(context, 25),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: kThemeDarkBlueColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 5),
                      blurRadius: 10),
                ]),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.call_rounded),
                            onPressed: () {
                              launch('tel:+14164362548');
                            }),
                      ),
                      Text(
                        "Contact Me",
                        style: TextStyle(
                            color: kAlertRedColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.email_rounded),
                          onPressed: () {
                            final Uri _emailLaunchUri = Uri(
                                scheme: 'mailto',
                                path: 'brotherstarlochan5268@gmail.com',
                                queryParameters: {'subject': 'Enquiry'});
                            launch(_emailLaunchUri.toString());
                          },
                        ),
                      ),
                    ],
                  ),
                  // Add TextFormFields and ElevatedButton here.
                  SizedBox(
                    height: 10,
                  ),
                  CustomFormFields(
                    controller: nameController,
                    hintText: "Enter Name Here",
                    errorEmptyText: 'No Name entered',
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  CustomFormFields(
                      controller: emailIdController,
                      hintText: "Enter Email ID Here",
                      errorEmptyText: 'No email entered'),
                  SizedBox(
                    height: 8.0,
                  ),
                  CustomFormFields(
                      maxLines: 4,
                      controller: messageController,
                      hintText: "Enter Message Here",
                      errorEmptyText: 'No message entered'),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: FlatButton(
                            padding: EdgeInsets.all(5),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: kAlertRedColor,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                /*firestoreInstance.collection("contacts").add({
                          "name": nameController.text,
                          "message": messageController.text,
                          "email": emailIdController.text,
                        }).then((value) {
                          print(value.id);
                        });*/
                                print("Name: ${nameController.text}");
                                print("Message: ${messageController.text}");
                                print("Email: ${emailIdController.text}");
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Sending Data')));
                                //Navigator.pop(context);
                                Navigator.of(context).pop();
                              }
                            },
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        flex: 1,
                        child: FlatButton(
                            padding: EdgeInsets.all(5),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: kAlertRedColor,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Close",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
