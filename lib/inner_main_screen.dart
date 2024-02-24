import 'package:flutter/material.dart';

class InnerMainScreen extends StatefulWidget {
  const InnerMainScreen({Key? key}) : super(key: key);

  @override
  State<InnerMainScreen> createState() => _InnerMainScreenState();
}

class _InnerMainScreenState extends State<InnerMainScreen> {
  final formKey = GlobalKey<FormState>();
  String name= '';
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _ScaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _ScaffoldKey,
      body: Container(
        margin: const EdgeInsets.only(left: 30,top: 90,right: 40),
       child: Form(
         key: formKey,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               child: const Text('Here to Get',style: TextStyle(color: Colors.black87,fontSize: 20),),
             ),
             Container(
               margin: const EdgeInsets.only(bottom: 40),
               child: const Text('Welcomed !',style: TextStyle(color: Colors.black87,fontSize: 20),),
             ),
             Container(
               margin: const EdgeInsets.only(bottom: 15),
               child: TextFormField(
                 decoration: const InputDecoration(
                   labelText: "Enter your name",
                 ),
                 validator: (value){
                   if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
                     return "Enter correct name";
                   } else {
                     return null;
                   }
                 },
               ),
             ),
             Container(
               margin: const EdgeInsets.only(bottom: 15),
               child: TextFormField(
                 decoration: const InputDecoration(
                   labelText: "Enter your mobile number",
                 ),
                 validator: (value){
                   if(value!.isEmpty || !RegExp(r'^[+]*[(]{0,1}[0-9]{1-4}[)]{0,1}[-\s\./0-9]+$').hasMatch(value!)){
                     return "Enter correct phone number";
                   } else {
                     return null;
                   }
                 },
               ),
             ),
             Container(
               margin: const EdgeInsets.only(bottom: 30),
               child: TextFormField(
                 decoration: const InputDecoration(
                   labelText: "Enter your email",
                 ),
                 validator: (value){
                   if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value!)){
                     return "Enter correct email";
                   } else {
                     return null;
                   }
                 },
               ),
             ),
             Container(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     child: const Text('Sign Up',style: TextStyle(color: Colors.black87,fontSize: 20),),
                   ),
                   Container(
                     height: 60,
                     width: 70,
                     child: ElevatedButton(
                       onPressed: (){
                         setState(() {

                         });
                       },
                       style: ElevatedButton.styleFrom(
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                         backgroundColor: Colors.indigo
                       ),
                       child: const Icon(Icons.arrow_forward,color: Colors.white),
                     ),
                   )
                 ],
               ),
             )
           ],
         ),
       ),
      ),
    );
  }
}
