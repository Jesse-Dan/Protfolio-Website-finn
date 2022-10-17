// ignore_for_file: deprecated_member_use, unnecessary_statements, missing_required_param

import 'dart:js';

import 'package:finn_jesse/components/default_button.dart';
import 'package:finn_jesse/components/section_title.dart';
import 'package:finn_jesse/constants.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_platform_alert/flutter_platform_alert.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/socal_card.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For Project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1300),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.all(2.0),
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SocalCard(
                  icon: Icons.mail_outlined,
                  color: Color(0xFFD9FFFC),
                  socialString: 'email Us ',
                  // iconSrc: "assets/images/skype.png",
                  name: '@JesseFinn',
                  press: () {
                    launchUrl(Uri.parse(
                        '''mailto:jessedan160@gmail.com?subject=From Project Inquriry &body=I need a Project  '''));
                  },
                ),
                SocalCard(
                  color: Color(0xFFE4FFC7),
                  socialString: 'reach us on Whatsapp',
                  icon: Icons.whatsapp,
                  // iconSrc: "assets/images/whatsapp.png",
                  name: '@Finn Jesse',
                  press: () {
                    launchUrl(Uri.parse(
                        "whatsapp://send?phone=+2349068814392&text=From Project Inquriry "));
                  },
                ),
                SocalCard(
                  icon: Icons.facebook_outlined,
                  color: Color(0xFFE8F0F9),
                  socialString: 'reach us on Facebook',
                  // iconSrc: "assets/images/messanger.png",
                  name: '@Flutte finn',
                  press: () {
                    launchUrl(Uri.parse(
                        'http://www.facebook.com/profile.php?id=100075225033815'));
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  ContactForm({
    Key key,
  }) : super(key: key);

  TextEditingController nameCtr = TextEditingController();
  TextEditingController mailCtr = TextEditingController();
  TextEditingController projectTypeCtr = TextEditingController();
  TextEditingController budgetCtr = TextEditingController();
  TextEditingController descriptionCtr = TextEditingController();
  TextEditingController phoneCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              controller: nameCtr,
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              controller: mailCtr,
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              controller: projectTypeCtr,
              decoration: InputDecoration(
                labelText: "Project Type",
                hintText: "Select Project Type",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              controller: phoneCtr,
              decoration: InputDecoration(
                labelText: "Phone Number",
                hintText: "+2349012345678",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              controller: budgetCtr,
              decoration: InputDecoration(
                labelText: "Project Budget",
                hintText: "Select Project Budget",
              ),
            ),
          ),
          SizedBox(
            // height: 300,
            // TextField by default cover the height, i tryed to fix this problem but i cant
            child: TextFormField(
              onChanged: (value) {},
              controller: descriptionCtr,
              decoration: InputDecoration(
                labelText: "Description",
                hintText: "Write some description",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                  imageSrc: "assets/images/contact_icon.png",
                  text:
                      //  nameCtr.text.isEmpty ||
                      //         phoneCtr.text.isEmpty ||
                      //         mailCtr.text.isEmpty ||
                      //         budgetCtr.text.isEmpty ||
                      //         projectTypeCtr.text.isEmpty ||
                      //         descriptionCtr.text.isEmpty
                      // ? "Fill the Fields!"
                      "Contact Me",
                  press: () {
                    if (nameCtr.text.isEmpty ||
                        phoneCtr.text.isEmpty ||
                        mailCtr.text.isEmpty ||
                        budgetCtr.text.isEmpty ||
                        projectTypeCtr.text.isEmpty ||
                        descriptionCtr.text.isEmpty) {
                      return SnackBar(
                        content: const Text('Yay! A SnackBar!'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      );
                    } else {
                      sendMessaege();
                      sendMail();
                    }
                  }),
            ),
          ),
        ],
      ),
    );
  }

  // sender(Function one, Function two) {
  //   return <Function>[
  //     two,
  //     one,
  //   ];
  // }

  navigator(__, Widget route) {
    Navigator.push(
      __,
      MaterialPageRoute(builder: (__) => route),
    );
  }

  sendMail() {
    var name = Uri.encodeComponent(nameCtr.text);
    var phone = Uri.encodeComponent(phoneCtr.text);
    var email = Uri.encodeComponent(mailCtr.text);
    var projectBudget = Uri.encodeComponent(budgetCtr.text);
    var projectType = Uri.encodeComponent(projectTypeCtr.text);
    var description = Uri.encodeComponent(descriptionCtr.text);
    var mailUrl =
        '''mailto:jessedan160@gmail.com?subject=Project Proposal &body=You've reached finn.dart ''' +
            '''Do you have a project ? Tell us more on our whatsapp platform''' +
            " we have your details"
                " name: $name" +
            " Email:$email" +
            " Phone: $phone" +
            " Project-type: $projectType" +
            " Project-budget: $projectBudget" +
            " Project-description: $description ";
    try {
      launch(mailUrl);
    } catch (e) {
      //To handle error and display error message
      const AlertDialog(title: Text("Unable to open whatsapp"));
    }
  }

  sendMessaege() {
    // if (nameCtr.text.isEmpty ||
    //     phoneCtr.text.isEmpty ||
    //     mailCtr.text.isEmpty ||
    //     budgetCtr.text.isEmpty ||
    //     projectTypeCtr.text.isEmpty ||
    //     descriptionCtr.text.isEmpty) {
    //   showDialog(builder: (BuildContext context) => _buildPopupDialog(context));
    // } else {
    FocusManager.instance.primaryFocus?.unfocus();
    var name = Uri.encodeComponent(nameCtr.text);
    var phone = Uri.encodeComponent(phoneCtr.text);
    var email = Uri.encodeComponent(mailCtr.text);
    var projectBudget = Uri.encodeComponent(budgetCtr.text);
    var projectType = Uri.encodeComponent(projectTypeCtr.text);
    var description = Uri.encodeComponent(descriptionCtr.text);
    var whatsapp = "+2349068814392";
    var whatsappUrl = "whatsapp://send?phone=$whatsapp&text= " +
        " name: $name " +
        " project-budget: $projectBudget " +
        " project-description: $description " +
        " Email:$email " +
        " Phone: $phone " +
        " Project-type: $projectType ";

    try {
      launch(whatsappUrl);
    } catch (e) {
      //To handle error and display error message
      const AlertDialog(title: Text("Unable to open whatsapp"));
    }
  }

  Widget buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: const Text('Popup example'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Hello"),
        ],
      ),
      actions: <Widget>[
         TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          // textColor: Theme.of(context).primaryColor,
          child: const Text('Close'),
        ),
      ],
    );
  }
}
