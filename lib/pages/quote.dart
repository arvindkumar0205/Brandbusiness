import 'package:brandbusiness/services/launch.dart';
import 'package:brandbusiness/util/hex_color.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Quote extends StatefulWidget {
  const Quote({super.key});

  @override
  State<Quote> createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  List<DropdownMenuItem<String>> dropDownItems = <DropdownMenuItem<String>>[
    DropdownMenuItem(value: 'No Subject', child: Text('Select a subject')),
    DropdownMenuItem(
        value: 'Web Design & Devlopment',
        child: Text('Web Design & Devlopment')),
    DropdownMenuItem(
        value: 'Android & iOS Development',
        child: Text('Android & iOS Development')),
    DropdownMenuItem(
        value: 'Web Application Development',
        child: Text('Web Application Development')),
    DropdownMenuItem(
        value: 'Digital Marketing', child: Text('Digital Marketing')),
    DropdownMenuItem(value: 'Wi-Fi Marketing', child: Text('Wi-Fi Marketing')),
    DropdownMenuItem(
        value: 'Custom Software Development',
        child: Text('Custom Software Development')),
    DropdownMenuItem(value: 'Lead Generation', child: Text('Lead Generation')),
    DropdownMenuItem(value: 'Other', child: Text('Other')),
  ];

  var dropDownValue;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dropDownValue = dropDownItems[0].value;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: size.height * 0.1,
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        "assets/bnr1.jpg",
                      ),
                      Positioned(
                        top: 30,
                        left: 20,
                        child: Text(
                          "Request A Demo",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "Newzealand Office",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "98 Tiverton Road, New Windsor, Auckland 0600\n Call us at : +64 09 889 4212",
                      style:
                          TextStyle(fontSize: 15, color: blueclor, height: 1.5),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "Australia Office",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "Unit 18 1 Browne Pde, Warwick Farm, NSW, 2170 \n Call us at : +61 02 8006 4424",
                      style:
                          TextStyle(fontSize: 15, color: blueclor, height: 1.5),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "Canada Office",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "115 Bellchase Trail, Brampton, ON L6P 3L3 \n Call us at : +1 814 822 0433",
                      style:
                          TextStyle(fontSize: 15, color: blueclor, height: 1.5),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "USA Office",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "316 Quince Ave Galloway, NJ 08205 \n Call us at : +1 814 822 0433",
                      style:
                          TextStyle(fontSize: 15, color: blueclor, height: 1.5),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "London Office",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "27 Old Gloucester Street LONDON WC1N 3AX UNITED KINGDOM\nCall us at : +44 20 3239 4243",
                      style:
                          TextStyle(fontSize: 15, color: blueclor, height: 1.5),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: TextFormField(
                      controller: firstNameController,
                      decoration: InputDecoration(
                        hintText: "First Name *",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: TextFormField(
                      controller: lastNameController,
                      decoration: InputDecoration(
                        hintText: "Last Name *",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: TextFormField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        hintText: "Phone *",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Email *",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: TextFormField(
                      controller: companyNameController,
                      decoration: InputDecoration(
                        hintText: "Company Name ",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: DropdownButtonFormField(
                        items: dropDownItems,
                        value: dropDownValue,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        )),
                        onChanged: (val) {
                          setState(() {
                            dropDownValue = val;
                          });
                        }),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: TextFormField(
                      controller: messageController,
                      textInputAction: TextInputAction.done,
                      maxLines: 10,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Message',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: MaterialButton(
                      onPressed: (() {
                        submitForm();
                      }),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      color: blueclor,
                    ),
                  ),
                  Visibility(
                      visible: false,
                      child: Row(
                        children: [
                          Icon(Icons.check),
                          Text("The form was sent successfully"),
                        ],
                      )),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: size.height,
                      ),
                      Image.asset(
                        'assets/footbg.jpg',
                        height: size.height * 1.5,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 270,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            child: const Text(
                              "VISIT US",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: blueclor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "Newzealand Office",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "98 Tiverton Rd, New Windsor, Auckland 0600",
                              style: TextStyle(
                                color: blueclor,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "Australia Office",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "Unit 18 1 Browne Pde, Warwick Farm, NSW, 2170",
                              style: TextStyle(
                                fontSize: 15,
                                color: blueclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 5,
                            ),
                            child: Text(
                              "Canada Office",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "115 Bellchase Trail, Brampton, ON L6P 3L3",
                              style: TextStyle(
                                fontSize: 15,
                                color: blueclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "USA Office",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "316 Quince Ave Galloway, NJ 08205",
                              style: TextStyle(
                                fontSize: 15,
                                color: blueclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "London Office",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "27 Old Gloucester Street LONDON WC1N 3AX \n UNITED  KINGDOM",
                              style: TextStyle(
                                fontSize: 15,
                                color: blueclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "COMPANY NUMBER: 13953026",
                              style: TextStyle(
                                fontSize: 15,
                                color: blueclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.facebook_outlined,
                                  size: 42,
                                  color: blueclor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/instagram.png',
                                  color: blueclor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/linkedin (1).png',
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/twitter (1).png',
                                  color: blueclor,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              "CONTACT US",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                  color: blueclor),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: RichText(
                              text: TextSpan(
                                text: 'New Zealand : ',
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: '+64 9 889 4211',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: blueclor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: RichText(
                              text: TextSpan(
                                text: 'Australia : : ',
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: '+61 28006 4422',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: blueclor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: RichText(
                              text: TextSpan(
                                text: 'USA & Canada  : ',
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: ' +1 8148220436',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: blueclor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: RichText(
                              text: TextSpan(
                                text: 'UK  : ',
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: '+44 20 3239 4243',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: blueclor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "support@webmaniacs.co.nz",
                              style: TextStyle(
                                fontSize: 19,
                                color: btextcolor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "PAYMENT",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: blueclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Image.asset("assets/payment.png"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "Our Delivery Partner",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "Proclivity Digitech",
                              style: TextStyle(
                                fontSize: 15,
                                color: blueclor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              color: btextcolor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "Copyright 2021 | Web Maniacs Ltd . All Rights Reserved.",
                              style: TextStyle(
                                fontSize: 15,
                                color: blueclor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: Row(
                children: [
                  Text(
                    "How can I Help you?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.lightGreen),
                    child: IconButton(
                      iconSize: 30,
                      highlightColor: Colors.black,
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.whatsapp),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> submitForm() async {
    String reciepent =
        "support@webmaniacs.co.nz@gmail.com"; //place the support email of webmaniacs
    String subject = dropDownValue.toString();
    String body = '''
     First Name : ${firstNameController.text} 
     Last Name : ${lastNameController.text} 
     Phone : ${phoneController.text}
     Email id : ${emailController.text}
     Subject : ${dropDownValue.toString()}
     Message : ${messageController.text} 
     ''';
    String url = 'mailto:$reciepent?subject=$subject&body=$body';
    Launch.launch_url(url);
  }

  // Future<void> submitForm() async {
  //   final Email email = Email(
  //     body: messageController.text,
  //     subject: dropDownValue.toString(),
  //     recipients: [
  //       'aayushsinha2020@gmail.com' // for testing
  //     ], // support email id of webmaniacs
  //     attachmentPaths: [],
  //     isHTML: true,
  //   );
  //   //
  //   String platformResponse;

  //   try {
  //     await FlutterEmailSender.send(email);
  //     platformResponse = 'success';
  //   } catch (error) {
  //     print(error);
  //     platformResponse = error.toString();
  //   }

  //   if (!mounted) return;

  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text(platformResponse + " \nGet a quote page"),
  //     ),
  //   );
  // }
}
