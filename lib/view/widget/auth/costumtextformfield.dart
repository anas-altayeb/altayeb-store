import 'package:flutter/material.dart';

class Costumtextformfield extends StatelessWidget{
  final String hintText;
  final String labeltext;
  final IconData? iconData;
  final bool isNumber ;
  final bool? obscureText;
  final void Function()? onTapIcon ;
  final String? Function(String?)? onSaved;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;



  const Costumtextformfield({super.key, required this.hintText, required this.labeltext, this.iconData, required this.isNumber, this.obscureText, this.onTapIcon, this.onSaved, this.keyboardType, this.validator, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: isNumber? const TextInputType.numberWithOptions(decimal: true):TextInputType.text,
    obscureText: obscureText == null || obscureText == false ? false :true ,
            decoration: InputDecoration(
              hintStyle: const TextStyle(fontSize: 14 ),
              hintText: hintText,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 30),
              label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(labeltext),),
              suffixIcon:  InkWell(onTap: onTapIcon,child: Icon(iconData),),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              )
            ),
          );
  }
}