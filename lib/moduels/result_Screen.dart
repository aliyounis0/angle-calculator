import 'package:angle_calculater/moduels/home.dart';
import 'package:angle_calculater/shared/caculate_and_navigate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class resultScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("result",style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 30,
          color: Colors.white,
        ),),
      ),
      body: Container(
        alignment: AlignmentDirectional.center,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/imgs/mechanical-engineering-best website.jpg"),
            fit:BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(("Power"),style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),),
              Container(
                alignment: AlignmentDirectional.center,
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text("${(power).toStringAsFixed(3)}",style: TextStyle(
                  fontWeight:FontWeight.w400,
                  fontSize: 35,
                ),),
              ),
              SizedBox(height: 70,),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("PHI_S",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      SizedBox(width: 10,),
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 100,
                        height: 40,
                        color: Colors.white,
                        child: Text("${(PHi_s).toStringAsFixed(3)}",style: TextStyle(
                          fontWeight:FontWeight.w400,
                          fontSize: 20,
                        ),),
                      ),
                      Spacer(),
                      Text(" PHI",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      SizedBox(width: 10,),
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 100,
                        height: 40,
                        color: Colors.white,
                        child: Text("${(Phi).toStringAsFixed(3)}",style: TextStyle(
                          fontWeight:FontWeight.w400,
                          fontSize: 20,
                        ),),
                      ),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      Text("AC",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      SizedBox(width: 30,),
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 100,
                        height: 40,
                        color: Colors.white,
                        child: Text("${(Ac).toStringAsFixed(3)}",style: TextStyle(
                          fontWeight:FontWeight.w400,
                          fontSize: 20,
                        ),),
                      ),
                      Spacer(),
                      Text("FC",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      SizedBox(width: 10,),
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 100,
                        height: 40,
                        color: Colors.white,
                        child: Text("${(Fc).toStringAsFixed(3)}",style: TextStyle(
                          fontWeight:FontWeight.w400,
                          fontSize: 20,
                        ),),
                      ),
                    ],
                  ),
                  SizedBox(height: 60,),
                  Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: MaterialButton(
                        onPressed:()
                        {
                          navigateTo(context, homeScreen());
                        },
                      child: Text("RESET",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
