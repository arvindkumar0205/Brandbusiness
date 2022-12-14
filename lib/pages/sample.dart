import 'package:brandbusiness/pages/pay_now.dart';
import 'package:brandbusiness/services/launch.dart';
// import 'package:brandbusiness/services/paypal_service.dart';
import 'package:brandbusiness/util/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:brandbusiness/paypal/services.dart';
import 'package:brandbusiness/paypal/paypal_webview.dart';

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  String? selectedValue;
  List<String> items = [
    'New Zealand Dollar',
    'US Dollar',
    'Canadian Dollar',
    'Australian Dollar',
    'Euro'
  ];

  // method to launch a url
  Future<void> launch_url(String _url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw 'Could not launch $_url';
    }
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        endDrawer: Drawer(
          child: ListView(
            children: [
              ListTile(title: Text("Home")),
              ExpansionTile(
                title: Text(
                  "Company",
                  textAlign: TextAlign.start,
                ),
                expandedAlignment: Alignment.centerLeft,
                children: [ListTile(title: Text("About Us"))],
              ),
              ExpansionTile(
                title: Text(
                  "Product & Services",
                  textAlign: TextAlign.left,
                ),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                // expandedAlignment: Alignment.centerLeft,
                children: [
                  ListTile(title: Text("Website Designing")),
                  ListTile(title: Text("Web Development")),
                  ListTile(title: Text("Android & ios Development")),
                  ListTile(title: Text("Web Application Development")),
                  ListTile(title: Text("Digital Marketing")),
                  ListTile(title: Text("Social Media Optimization")),
                  ListTile(title: Text("Search Engine Optimization")),
                  ListTile(title: Text("Wi-Fi Marketing")),
                  ListTile(title: Text("Custom Software Development")),
                  ListTile(title: Text("Lead Generation")),
                ],
              ),
              ListTile(
                title: Text("News & FAQs"),
              ),
              ListTile(title: Text("Clients")),
              ListTile(title: Text("Pricing")),
              ListTile(title: Text("Request a Demo")),
              ListTile(title: Text("Blog")),
              ListTile(title: Text("Contact Us")),
            ],
          ),
        ),
        appBar: PreferredSize(
          preferredSize: Size(size.width, kToolbarHeight),
          child: Builder(builder: (ctx) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/logo.png",
                  // fit: BoxFit.cover,
                ),
                IconButton(
                    onPressed: () {
                      Scaffold.of(ctx).isEndDrawerOpen
                          ? Scaffold.of(ctx).closeEndDrawer()
                          : Scaffold.of(ctx).openEndDrawer();
                    },
                    icon: Icon(Icons.menu)),
              ],
            );
          }),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row(
                  //   children: [
                  //     Image.asset("assets/logo.png"),
                  //   ],
                  // ),
                  Stack(
                    children: [
                      Image.asset("assets/about_us_banner (1).jpg"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Pay Now",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Your Name*",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: bodercolor,
                        border: OutlineInputBorder(),
                        labelText: 'Enter your Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Select Your Currency*",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Select Item',
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                          ),
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Product Name',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: bodercolor,
                        border: OutlineInputBorder(),
                        labelText: 'Enter your product Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Amount*',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: bodercolor,
                        border: OutlineInputBorder(),
                        labelText: 'Enter your Amount',
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: MaterialButton(
                          color: blueclor,
                          onPressed: () async {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaypalWebview(
                                          initialUrl:
                                              "https://webmaniacs.co.nz/pay-now/",
                                        )));
                            // var accessToken =
                            //     await PaypalServices().getAuthToken();
                            // if (accessToken != null) {
                            //   var OrderId = await PaypalServices()
                            //       .createOrder(accessToken.toString());
                            //   if (OrderId != null) {
                            //     // attach webview
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) => PaypalWebview(
                            //                   AccessToken: accessToken,
                            //                   OrderId: OrderId,
                            //                   initialUrl:
                            //                       "https://www.sandbox.paypal.com/checkoutnow?token=$OrderId",
                            //                 )));
                            //     // PaypalServices().capturePaymentForOrder();
                            //   }
                            // }
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: size.height,
                      ),
                      Image.asset(
                        'assets/footbg.jpg',
                        height: size.height * 1.8,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 300,
                            ),
                            headingText("VISIT US", 26),
                            heading2("Newzealand Office"),
                            dscText2(
                                "98 Tiverton Rd, New Windsor, Auckland 0600"),
                            SizedBox(
                              height: 20,
                            ),
                            heading2("Australia Office"),
                            dscText2(
                                "Unit 18 1 Browne Pde, Warwick Farm, NSW, 2170"),
                            SizedBox(
                              height: 20,
                            ),
                            heading2("Canada Office"),
                            dscText2(
                                "115 Bellchase Trail, Brampton, ON L6P 3L3"),
                            SizedBox(
                              height: 20,
                            ),
                            heading2("USA Office"),
                            dscText2("316 Quince Ave Galloway, NJ 08205"),
                            SizedBox(
                              height: 20,
                            ),
                            heading2("London Office"),
                            dscText2(
                                "27 Old Gloucester Street LONDON WC1N 3AX \n UNITED  KINGDOM"),
                            SizedBox(
                              height: 20,
                            ),
                            dscText2("COMPANY NUMBER: 13953026"),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: (() {
                                      launch_url(
                                          'https://www.facebook.com/webmaniacsnz.co.nz');
                                    }),
                                    child: Icon(
                                      Icons.facebook_outlined,
                                      size: 42,
                                      color: blueclor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: (() {
                                      launch_url(
                                          "https://www.instagram.com/webmaniacsnz/");
                                    }),
                                    child: Image.asset(
                                      'assets/instagram.png',
                                      color: blueclor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      launch_url(
                                          "https://www.linkedin.com/company/webmaniacs/");
                                    },
                                    child: Image.asset(
                                      'assets/linkedin (1).png',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      launch_url(
                                          "https://twitter.com/webmaniacsnz");
                                    },
                                    child: Image.asset(
                                      'assets/twitter (1).png',
                                      color: blueclor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            headingText("CONTACT US", 26),
                            SizedBox(
                              height: 20,
                            ),
                            phoneText("New Zealand : ", "+64 9 889 4211"),
                            SizedBox(
                              height: 20,
                            ),
                            phoneText('Australia : : ', '+61 28006 4422'),
                            SizedBox(
                              height: 20,
                            ),
                            phoneText('USA & Canada  : ', ' +1 8148220436'),
                            SizedBox(
                              height: 20,
                            ),
                            phoneText('UK  : ', '+44 20 3239 4243'),
                            SizedBox(
                              height: 20,
                            ),
                            TextButton(
                                onPressed: () async {
                                  final url =
                                      "mailto:support@webmaniacs.co.nz?subject=Support Enquiry Inquiry&body=";
                                  Launch.launch_url(url);
                                },
                                child: Text(
                                  "support@webmaniacs.co.nz",
                                  style: TextStyle(fontSize: 18),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            headingText("PAYMENT", 26),
                            SizedBox(
                              height: 20,
                            ),
                            // Payment Button
                            MaterialButton(
                              onPressed: () {
                                //proceed with payment
                              },
                              child: Text("Continue to Pay"),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => PayNow()));
                                    // makePayment();
                                  },
                                  child: Image.asset("assets/payment.png")),
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
                      onPressed: () {
                        // "whatsapp://send?phone=$phone&text=$message";
                        String url = 'https://wa.me/+64227000067/';
                        Launch.launch_url(url);
                        // launchUrl(
                        //     Uri.parse(
                        //         'https://wa.me/$countryCode$contactNo?text=Hi'),
                        //     mode: LaunchMode.externalApplication);
                      },
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

  Widget headingText(String text, double? fontSize) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize ?? 30,
          color: blueclor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget heading2(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget dscText2(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: blueclor,
          fontSize: 15,
        ),
      ),
    );
  }

  Widget phoneText(String place, String number) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: RichText(
        text: TextSpan(
          text: place,
          style: TextStyle(
            fontSize: 19,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: number,
              style: TextStyle(
                fontSize: 19,
                color: blueclor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchWhatsapp() async {
    var whatsapp = "+9113953026";
    var whatsappAndroid =
        Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
    if (await canLaunchUrl(whatsappAndroid)) {
      await launchUrl(whatsappAndroid);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("WhatsApp is not installed on the device"),
        ),
      );
    }
  }

  // makePayment() async {
  //   debugPrint("make payment");
  //   PaypalServices paypal = PaypalServices();
  //   dynamic access_token = await paypal.getAccessToken();
  //   if (access_token != null) {
  //     print(access_token);
  //     // dynamic transactions = [
  //     //   {
  //     //     "amount": "100",
  //     //     "name": "Sample name",
  //     //     "currency": "INR",
  //     //     "product_name": "",
  //     //     "description": "Payment from Webmaniacs Application"
  //     //   }
  //     // ];
  //     // paypal.createPaypalPayment(transactions, access_token);
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: Text("Payment Error"),
  //     ));
  //   }
  // }
}
