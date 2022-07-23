// // ignore_for_file: deprecated_member_use

// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class CustomTextField extends StatelessWidget {
//   final double width;
//   final TextEditingController textEditingController;
//   final TextInputType textInputType;
//   final String hintText;
//   final int maxLength;
//   final TextAlign textAlign;
//   CustomTextField({
//     this.maxLength,
//     this.hintText,
//     this.textInputType,
//     this.textEditingController,
//     this.width,
//     this.textAlign = TextAlign.center,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * width,
//       child: TextFormField(
//         textAlign: textAlign,
//         controller: textEditingController,
//         keyboardType: textInputType,
//         maxLength: maxLength,
//         decoration: InputDecoration(
//           hintText: hintText,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(5),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SendMessageView extends StatefulWidget {
//   SendMessageView({Key key}) : super(key: key);

//   @override
//   State<SendMessageView> createState() => _SendMessageViewState();
// }

// class _SendMessageViewState extends State<SendMessageView> {
 
//   TextEditingController nameCtr = TextEditingController();
//   TextEditingController mailCtr = TextEditingController();
//   TextEditingController projectTypeCtr = TextEditingController();
//   TextEditingController budgetCtr = TextEditingController();
//   TextEditingController descriptionCtr = TextEditingController();
//   TextEditingController phoneCtr = TextEditingController();


//   @override
//   void dispose() {
//     _countryCodeController.dispose();
//     _phoneController.dispose();
//     _messageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Column(
//           children: [
//             Text(
//               "Enter your phone number",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CustomTextField(
//                   width: 20,
//                   maxLength: 3,
//                   hintText: "+91",
//                   textEditingController: _countryCodeController,
//                   textInputType: TextInputType.phone,
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * 5,
//                 ),
//                 CustomTextField(
//                   width: 60,
//                   maxLength: 10,
//                   hintText: "Phone Number",
//                   textEditingController: phoneCtr,
//                   textInputType: TextInputType.phone,
//                 )
//               ],
//             ),
//             CustomTextField(
//               width: 100,
//               hintText: "Message",
//               textEditingController: descriptionCtr,
//               textInputType: TextInputType.text,
//               textAlign: TextAlign.start,
//             ),
//             GestureDetector(
//               onTap: () async {
//                 //To remove the keyboard when button is pressed
//                 FocusManager.instance.primaryFocus?.unfocus();

//                 var whatsappUrl =
//                     "whatsapp://send?phone=${_countryCodeController.text + _phoneController.text}" +
//                         "&text=${Uri.encodeComponent(_messageController.text)}";
//                 try {
//                   launch(whatsappUrl);
//                 } catch (e) {
//                   //To handle error and display error message
//                   AlertDialog(title: Text("Unable to open whatsapp"));
//                 }
//               },
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height * 6,
//               width: MediaQuery.of(context).size.width * 40,
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: Colors.green.shade800,
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               child: Center(
//                 child: Text(
//                   "Open WhatsApp",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _sendMessage() {
//     //To remove the keyboard when button is pressed
//     FocusManager.instance.primaryFocus?.unfocus();
//     var name = Uri.encodeComponent(nameCtr.text);
//     var phone = Uri.encodeComponent(phoneCtr.text);
//     var email = Uri.encodeComponent(mailCtr.text);
//     var projectBudget = Uri.encodeComponent(budgetCtr.text);
//     var projectType = Uri.encodeComponent(projectTypeCtr.text);
//     var description = Uri.encodeComponent(descriptionCtr.text);
//     var whatsapp = "+2348087755978";
//     var whatsappUrl = "whatsapp://send?phone=$whatsapp&text= " +
//         "name: $name" +
//         "project-budget: $projectBudget" +
//         " project-description: $description " +
//         " Email:$email" +
//         " Phone: $phone" +
//         " Project-type: $projectType";

//     try {
//       launch(whatsappUrl);
//     } catch (e) {
//       //To handle error and display error message
//       const AlertDialog(title: Text("Unable to open whatsapp"));
//     }
//   }

// }
