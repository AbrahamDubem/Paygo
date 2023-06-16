import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pay_go/Component/colors.dart';
import 'package:pay_go/pages/payment_page.dart';
import 'package:pay_go/pages/widgets/buttons.dart';
import 'package:pay_go/pages/widgets/large_buttons.dart';
import 'package:pay_go/pages/widgets/text_size.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Appcolor.backgroundColor,
        body: Container(
            height: h,
            child: Stack(children: [
              _headSection(),
              _listviews(),
              _payButton(),
              //_textContainer(),
              //_buttonContainer(),
              _mainBackground(),
              //_curveImageContainer(),
              _payButton(),
              Positioned(
                left: 0,
                top: 110,
                bottom: 0,
                right: 30,
                child: Text("PayGo",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )
            ])));
  }

  _headSection() {
    return Container(
        height: 310,
        width: 200,
        color: Colors.purple,
        child: Stack(
          children: [
            _mainBackground(),
            _curveImageContainer(),
            _buttonContainer(),
            _listviews(),
           // _textContainer(),
          ],
        ));
  }

  _buttonContainer() {
    return Positioned(
        right: 58,
        bottom: 15,
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                barrierColor: Colors.grey.withOpacity(0.1),
                backgroundColor: Colors.grey.withOpacity(0.1),
                context: context,
                builder: (BuildContext bc) {
                  return Container(
                    height: MediaQuery.of(context).size.height -240,
                    child: Stack(
                      children: [
                        Positioned(
                            bottom: 0,
                            child: Container(
                              color: Color(0xFFeef1f4).withOpacity(0.7),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height - 100,
                            )),
                        Positioned(
                          top: 0,
                          right: 60,
                          child: Container(
                            padding: const EdgeInsets.only(top: 5, bottom: 25),
                            width: 60,
                            height: 250,
                            decoration: BoxDecoration(
                                color: Appcolor.mainColor,
                                borderRadius: BorderRadius.circular(29)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppButtons(
                                  icon: Icons.cancel,
                                  iconColor: Appcolor.mainColor,
                                  textColor: Colors.white,
                                  backgroundColor: Colors.white,
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                AppButtons(
                                    icon: Icons.add,
                                    iconColor: Appcolor.mainColor,
                                    textColor: Colors.white,
                                    backgroundColor: Colors.white,
                                    onTap: () {},
                                    text: "Add Bill"),
                                AppButtons(
                                  icon: Icons.history,
                                  iconColor: Appcolor.mainColor,
                                  textColor: Colors.white,
                                  backgroundColor: Colors.white,
                                  onTap: () {},
                                  text: "History",
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                });
          },
          child: Container(
            height: 70,
            width: 60,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/list.png")),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      offset: Offset(0, 1),
                      color: Color(0xFF11324d).withOpacity(0.2))
                ]),
          ),
        ));
  }

  _mainBackground() {
    return Positioned(
        bottom: 10,
        left: 0,
        right: 0,
        top: 0,
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(""))),
        ));
  }

  _curveImageContainer() {
    return Positioned(
      left: 0,
      right: 10,
      bottom: 0,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
            image:
                DecorationImage(fit: BoxFit.fitHeight, image: AssetImage("assets/images/NHDR.jpg"))),
      ),
    );
  }

  _listviews() {
    return Positioned(
      top: 300,
      left: 0,
      right: 0,
      bottom: 0,
      child: Column(
        children: [
          MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (_, index) {
                return Container(
                  margin: const EdgeInsets.only(top: 20, right: 20),
                  height: 130,
                  width: MediaQuery.of(context).size.width - 20,
                  color: Colors.red,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFd8dbe0),
                          offset: Offset(1, 1),
                          blurRadius: 20.0,
                          spreadRadius: 10,
                        )
                      ]),
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, left: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          width: 3, color: Colors.grey),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/E.JPG")),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 15,
                                            offset: Offset(0, 1),
                                            color: Color(0xFF11324d)
                                                .withOpacity(0.2))
                                      ]),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("ABRAHAM SUPERMARKET",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Appcolor.mainColor,
                                          fontWeight: FontWeight.w700,
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("ID:08104532643",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Appcolor.idColor,
                                          fontWeight: FontWeight.w700,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                            SizedText(
                              text: "Auto pay on 16th Oct, 2023",
                              color: Appcolor.green,
                            ),
                            SizedBox(
                              height: 5,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Appcolor.selectbackground,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Select",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Appcolor.selectColor,
                                        ),
                                      ),
                                    )),
                                Expanded(child: Container()),
                                Text(
                                  "\#3500.75",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: Appcolor.mainColor,
                                  ),
                                ),
                                Text(
                                  "Due in 3 days",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Appcolor.idColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 5,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Appcolor.halfOval,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  _payButton() {
    return Positioned(
      bottom: 20,
      child: AppLargeButton(
        text: "Pay all bills",
        textColor: Colors.white,
        onTap: () {
          Get.to(() => PaymentPage());
        },
      ),
    );
  }

  _textContainer() {
    return Stack(
      children: [
        Positioned(
            left: 40,
            top: 120,
            right: 30,
            bottom: 0,
            child: Text(
              "PAYGO",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),
        Positioned(
            left: 0,
            right: 110,
            child: Text(
              "My Bills",
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                color: Color(0xFF293952),
              ),
            )),
      ],
    );
  }
}
