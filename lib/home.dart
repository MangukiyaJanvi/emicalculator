import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double selectamount = 0;
  double selectrate = 0;
  double selectyear = 0;
  double answer = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("EMI Calculator"),
          centerTitle: true,
          backgroundColor: Colors.indigo.shade900,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 175,
                  width: double.infinity,
                  color: Colors.indigo.shade900,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Your loan EMI is",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "\$ ${answer.toInt()}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                height: 425,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Loan Amount",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff484848)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: [
                          Text(
                            "Loan Amount",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Color(0xffe5e6e8)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 110),
                            child: Text(
                              "$selectamount",
                              style: TextStyle(color: Color(0xff000000)),
                            ),
                          ),
                        ],
                          ),
                      Slider(
                          max: 100000,
                          divisions: 20,
                          value: selectamount,
                          onChanged: (value) {
                            setState(() {
                              selectamount = value;
                            });
                          }),
                      Text("Interest Rate",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff484848)),),
                      Stack(
                        children: [
                          Text(
                            "Interest Rate",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Color(0xffe5e6e8)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 110),
                            child: Text(
                              "$selectrate",
                              style: TextStyle(color: Color(0xff000000)),
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        max: 20,
                          divisions: 20,
                          value: selectrate,
                          onChanged: (value) {
                            setState(() {
                              selectrate = value;
                            });
                          }),
                      Text("Loan Tenure",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff484848)),),
                      Stack(
                        children: [
                          Text(
                            "Loan Tenure",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Color(0xffe5e6e8)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 110),
                            child: Text(
                              "${selectyear.toInt()}",
                              style: TextStyle(color: Color(0xff000000)),
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        max: 30,
                          divisions: 30,
                          value: selectyear,
                          onChanged: (value) {
                            setState(() {
                              selectyear = value;
                            });
                          }),
                      InkWell(
                        onTap: () {
                          setState(() {
                            answer =(selectamount * selectyear * selectrate) / 100;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: Color(0xff20295c)),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Calculate",
                            style: TextStyle(color: Color(0xff2c3568)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
