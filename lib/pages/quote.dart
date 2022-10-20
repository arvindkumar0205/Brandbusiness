import 'package:brandbusiness/util/hex_color.dart';
import 'package:flutter/material.dart';

class Quote extends StatefulWidget {
  const Quote({super.key});

  @override
  State<Quote> createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  List<DropdownMenuItem<String>> dropDownItems = <DropdownMenuItem<String>>[
    DropdownMenuItem(value: 'Option 1', child: Text('Select a subject')),
    DropdownMenuItem(value: 'Option 2', child: Text('Web Design & Devlopment')),
    DropdownMenuItem(
        value: 'Option 3', child: Text('Android & iOS Development')),
    DropdownMenuItem(
        value: 'Option 4', child: Text('Web Application Development')),
    DropdownMenuItem(value: 'Option 5', child: Text('Digital Marketing')),
    DropdownMenuItem(value: 'Option 6', child: Text('Wi-Fi Marketing')),
    DropdownMenuItem(
        value: 'Option 7', child: Text('Custom Software Development')),
    DropdownMenuItem(value: 'Option 8', child: Text('Lead Generation')),
    DropdownMenuItem(value: 'Option 9', child: Text('Other')),
  ];

  var dropDownValue;

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
        body: SingleChildScrollView(
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
                  style: TextStyle(fontSize: 15, color: blueclor, height: 1.5),
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
                  style: TextStyle(fontSize: 15, color: blueclor, height: 1.5),
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
                  style: TextStyle(fontSize: 15, color: blueclor, height: 1.5),
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
                  style: TextStyle(fontSize: 15, color: blueclor, height: 1.5),
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
                  style: TextStyle(fontSize: 15, color: blueclor, height: 1.5),
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
                  decoration: InputDecoration(
                    hintText: "Email",
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
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "",
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
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    )),
                    onChanged: (val) {
                      setState(() {
                        dropDownValue = val;
                      });
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}