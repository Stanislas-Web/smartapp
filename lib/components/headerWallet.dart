import 'package:flutter/material.dart';
import 'package:Smartdrc/size_config.dart';
import 'package:progress_dialog/progress_dialog.dart';
import './search_field.dart';

class HeaderWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Size size = MediaQuery.of(context).size;
    final ProgressDialog pr = ProgressDialog(context);
    pr.style(
      message: 'Veuillez patienter ...',
    );
    return Container(
      color: Color(0xFF15A4EF),
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: size.height * 0.1 / 4,
              ),
              headerBanking(context),
              SizedBox(
                height: size.height * 0.1 / 4,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.3 / 5,
                  right: MediaQuery.of(context).size.width * 0.3 / 5,
                ),
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: getProportionateScreenWidth(20),
                              top: getProportionateScreenWidth(10),
                            ),
                            child: Text(
                              "Solde :",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "300 USD",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "3000000000 CDF",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Color(0xFF15A4EF),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.refresh,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                await pr.show();
                                Future.delayed(
                                    const Duration(milliseconds: 1500), () {
                                  pr.hide();
                                });
                              },
                              iconSize: getProportionateScreenWidth(30),
                            ),
                          ),
                          Text(
                            "Actualiser",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.1 / 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget headerBanking(context) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.3 / 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SearchField(),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF15A4EF),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenWidth(30)),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Icon(
                    Icons.qr_code_outlined,
                    color: Color(0xFF15A4EF),
                    size: getProportionateScreenWidth(30),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenWidth(30)),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Icon(
                    Icons.add_circle_outline,
                    color: Color(0xFF15A4EF),
                    size: getProportionateScreenWidth(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
