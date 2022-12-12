import 'dart:math';
import 'package:angle_calculater/moduels/result_Screen.dart';
import 'package:angle_calculater/shared/caculate_and_navigate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class homeScreen  extends StatefulWidget {
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
var d_controller= TextEditingController();

var Dc_controller=TextEditingController();

var Z_controller=TextEditingController();

var FT_controller=TextEditingController();

var BC_controller=TextEditingController();

var KC_controller=TextEditingController();

var NC_controller=TextEditingController();

final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Share Angle Calculater",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),),

      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title:RichText(

                text: TextSpan(
                  children: [
                    TextSpan(
                      text:"pro/ Samy Oraby",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap=(){
                        var url="https://scholar.google.com/citations?user=NYpbPNUAAAAJ&hl=en";
                        launch(url);
                      }
                    ),
                  ],
                ),
              ),

            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/imgs/mechanical-engineering-best website.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            physics:ScrollPhysics(),
            child: Form(
              key:_formKey ,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("d",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      SizedBox(height: 5,),
                      TextFormField(
                        controller: d_controller,
                        keyboardType: TextInputType.number,
                        validator:( value){
                          if(value!.isEmpty || value==null){
                            return "This is required";
                          }
                          else{
                            return null;
                          }
                        },

                        decoration: InputDecoration(
                         // hintText: "name",
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0) ,
                      borderSide:
                      BorderSide(
                          width: 3,
                          color: Colors.white,

                      ),
                ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0) ,
                            borderSide: BorderSide(
                                width: 1, color: Colors.blue,
                            ),
                          ),

                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dc",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      SizedBox(height: 5,),
                      TextFormField(
                        controller: Dc_controller,
                        keyboardType: TextInputType.number,
                        validator:( value){
                          if(value!.isEmpty|| value==null){
                            return "This is required";
                          }
                          else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          // hintText: "name",
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0) ,
                            borderSide:
                            BorderSide(
                              width: 3,
                              color: Colors.white,

                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0) ,
                            borderSide: BorderSide(
                              width: 1, color: Colors.blue,
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Z",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      SizedBox(height: 5,),
                      TextFormField(
                        controller: Z_controller,
                        keyboardType: TextInputType.number,
                        validator:( value){
                          if(value!.isEmpty|| value==null){
                            return "This is required";
                          }
                          else{
                            return null;
                          }
                        },
                        // inputFormatters: <TextInputFormatter>[
                        //   // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        //   FilteringTextInputFormatter.digitsOnly,
                        // ],
                        decoration: InputDecoration(
                          hintText: "1234 Main St",
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0) ,
                            borderSide:
                            BorderSide(
                              width: 3,
                              color: Colors.white,

                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0) ,
                            borderSide: BorderSide(
                              width: 1, color: Colors.blue,
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("FT",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      SizedBox(height: 5,),
                      TextFormField(
                        controller: FT_controller,
                        keyboardType: TextInputType.number,
                        validator:( value){
                          if(value!.isEmpty|| value==null){
                            return "This is required";
                          }
                          else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "Apartment, Studio, or floor",
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0) ,
                            borderSide:
                            BorderSide(
                              width: 3,
                              color: Colors.white,

                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0) ,
                            borderSide: BorderSide(
                              width: 1, color: Colors.blue,
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BC",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      SizedBox(height: 5,),
                      TextFormField(
                        controller: BC_controller,
                        keyboardType: TextInputType.number,
                        validator:( value){
                          if(value!.isEmpty|| value==null){
                            return "This is required";
                          }
                          else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          // hintText: "name",
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0) ,
                            borderSide:
                            BorderSide(
                              width: 3,
                              color: Colors.white,

                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0) ,
                            borderSide: BorderSide(
                              width: 1, color: Colors.blue,
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("KC",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      SizedBox(height: 5,),
                      TextFormField(
                        controller: KC_controller,
                        keyboardType: TextInputType.number,
                        validator:( value){
                          if(value!.isEmpty|| value==null){
                            return "This is required";
                          }
                          else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          // hintText: "name",
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0) ,
                            borderSide:
                            BorderSide(
                              width: 3,
                              color: Colors.white,

                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0) ,
                            borderSide: BorderSide(
                              width: 1, color: Colors.blue,
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NC",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      SizedBox(height: 5,),
                      TextFormField(
                        controller: NC_controller,
                        keyboardType: TextInputType.number,
                        validator:( value){
                          if(value!.isEmpty|| value==null){
                            return "This is required";
                          }
                          else{
                            return null;
                          }
                        },
                        onFieldSubmitted: (value)
                        {
                          setState(() {
                            if(_formKey.currentState!.validate()){
                              setState((){
                                Phi = ( 360 / double.parse("${Z_controller.text}") );
                                PHi_s =( acos(1-(2 * double.parse("${d_controller.text}") /double.parse("${Dc_controller.text}"))) * 180/3.14 );
                                n =(PHi_s / Phi).ceil();
                                Ac = ( double.parse("${BC_controller.text}") * double.parse("${FT_controller.text}") * sin(PHi_s * pi/180  ));
                                Fc =( double.parse("${KC_controller.text}") * Ac * 1 );
                                power = ((Fc * pi * double.parse("${Dc_controller.text}") * double.parse("${NC_controller.text}") )/60000000);

                                navigateTo(context, resultScreen());
                              });
                            }
                          });
                        },
                        decoration: InputDecoration(
                          // hintText: "name",
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0) ,
                            borderSide:
                            BorderSide(
                              width: 3,
                              color: Colors.white,

                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0) ,
                            borderSide: BorderSide(
                              width: 1, color: Colors.blue,
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 200,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: MaterialButton(
                        onPressed:()
                        {
                          if(_formKey.currentState!.validate()){
                           setState((){
                              Phi = ( 360 / double.parse("${Z_controller.text}") );
                              PHi_s =( acos(1-(2 * double.parse("${d_controller.text}") /double.parse("${Dc_controller.text}"))) * 180/3.14 );
                              n =(PHi_s / Phi).ceil();
                              Ac = ( double.parse("${BC_controller.text}") * double.parse("${FT_controller.text}") * sin(PHi_s * pi/180  ));
                              Fc =( double.parse("${KC_controller.text}") * Ac * 1 );
                              power = ((Fc * pi * double.parse("${Dc_controller.text}") * double.parse("${NC_controller.text}") )/60000000);

                             navigateTo(context, resultScreen());
                           });
                          }
                        },
                        child: Text("Caculate"),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("© 2020 Copyright: ",style: TextStyle(
                        color: Colors.white,
                      ),),
                      RichText(

                        text: TextSpan(
                          children: [
                            TextSpan(
                                text:" MDBootstrap.com",
                                style: TextStyle(
                                  fontSize: 20,
                                  //fontWeight: FontWeight.w500,
                                  color: Colors.blue,
                                  decoration:TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()..onTap=(){
                                  var url="https://mdbootstrap.com/";
                                  launch(url);
                                }
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}



// onFieldSubmitted: (value){
//
// },