// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GlowingButton extends StatefulWidget {
   final Color color1;
  final Color color2;
  const GlowingButton({
    Key? key,
     this.color1=Colors.cyan,
     this.color2=Colors.greenAccent,
  }) : super(key: key);

  

  @override
  State<GlowingButton> createState() => _GlowingButtonState();
}

class _GlowingButtonState extends State<GlowingButton> {
  var glowing = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (val){
        setState(() {
          glowing = false;
          
        });

      },
      onTapDown: (val){
          setState(() {
            glowing=true;
          });
      },
      child: AnimatedContainer(
    
        duration: Duration(milliseconds: 50),
        height: 48,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(colors: [
            widget.color1,
            widget.color2,
          ],
          ),
          boxShadow: glowing?[
            BoxShadow(
              color: widget.color1.withOpacity(0.6),
              spreadRadius: 1,
              blurRadius: 16,
              offset: Offset(-8,0),
            ),
            BoxShadow(
              color: widget.color2.withOpacity(0.6),
              spreadRadius: 1,
              blurRadius: 16,
              offset: Offset(8,0),
            ),
          ]:[]
        ),
      ),
    );
  }
}