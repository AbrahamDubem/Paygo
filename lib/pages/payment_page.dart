import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay_go/Component/colors.dart';
import 'package:pay_go/pages/widgets/buttons.dart';
import 'package:pay_go/pages/widgets/large_buttons.dart';
import 'package:get/get.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(
        top: 80,
        left: 20,
        right: 19,
      ),
      height: h,
      width: w,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage("assets/images/HT.png")),
      ),
      child: Column(
        children: [
          Container(
              width: double.maxFinite,
              height: 75,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("assets/images/CT.png")),
              )),
          SizedBox(
            height: 30,
          ),
          Text(
            "Success!!",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Payment is Completed.",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Appcolor.mainColor,
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 160,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.withOpacity(0.5),
                )),
            child: MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (_, index) {
                  return Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 15, left: 20, bottom: 10),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green,
                              ),
                              child: Icon(Icons.done,
                                  size: 30, color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Abraham Supermarket",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "ID: 08104532643",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  "",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "\$3500.75",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 100),
          Column(
            children: [
              Text(
                "Total Amount",
                style: TextStyle(
                  fontSize: 15,
                  color: Appcolor.idColor,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "\$5000.00",
                style: TextStyle(
                  fontSize: 15,
                  color: Appcolor.mainColor,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButtons(
                icon: Icons.share_sharp,
                onTap: () {},
                text: "Share",
              ),
              SizedBox(width: 30),
              AppButtons(
                icon: Icons.print_outlined,
                onTap: () {},
                text: "Print",
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          AppLargeButton(
            text: "Done",
            backgroundColor: Colors.white,
            textColor: Appcolor.mainColor,
            onTap: () {
              Get.back();
            },
          )
        ],
      ),
    ));
  }
}
