
import 'package:flutter/material.dart';

var power;
var Phi;
var PHi_s;
var n;
var  Ac;
var Fc;


void navigateTo (context,widgit)=>Navigator.push(
  context,
  MaterialPageRoute(builder: (context)=>widgit),
);



Widget itemBuilder({
  required TextEditingController controller,
  required String text,
  String? hint="",
})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value!.isEmpty || value == null) {
            return "This is required";
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: hint ,
          filled: true,
          fillColor: Colors.white,
          contentPadding:
          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              width: 3,
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              width: 1,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    ],
  );
}