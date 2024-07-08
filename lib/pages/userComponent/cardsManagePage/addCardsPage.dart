import 'package:flutter/material.dart';
import 'package:flutter_application/component/customBottomModal.dart';

class addCardsPage extends StatefulWidget {
  const addCardsPage({super.key});

  @override
  State<addCardsPage> createState() => _addCardsPageState();
}

class _addCardsPageState extends State<addCardsPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _controllerCurrency = TextEditingController();
  late TextEditingController _controllerName = TextEditingController();
  late bool isError = false;
  @override
  void initState() {
    // TODO: implement initState
    _controllerCurrency.text = '123';
    super.initState();
  }

  void handleChangeCurrency(params) {
    print(params);
  }

  @override
  Widget build(BuildContext context) {
    const titleDefault =
        TextStyle(color: Color.fromRGBO(153, 153, 153, 1), fontSize: 12);
    const lableDefault =
        TextStyle(color: Color.fromRGBO(153, 153, 153, 1), fontSize: 14);
    const lablePreDefault =
        TextStyle(color: Color.fromRGBO(51, 51, 51, 1), fontSize: 14);

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Cards',
            style:
                TextStyle(color: Color.fromRGBO(51, 51, 51, 1), fontSize: 16),
          )),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 20),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16))),
                                  isScrollControlled: true,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) => customBottomModal(
                                      ChangeValue: handleChangeCurrency));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Currency',
                                  style: titleDefault,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 46,
                                  padding: const EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      border: Border.all(
                                          width: 0.5,
                                          color: Color.fromRGBO(
                                              204, 204, 204, 1))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: 'Please choose',
                                              hintStyle: lableDefault,
                                              fillColor: Colors.white,
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                              ),
                                              enabled: false),
                                        ),
                                      ),
                                      Image.asset(
                                        'icon/downArrow.png',
                                        width: 12,
                                        height: 12,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: titleDefault,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: double.infinity,
                                height: 46,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(249, 249, 249, 1),
                                ),
                                child: TextFormField(
                                  controller: _controllerCurrency,
                                  textAlignVertical: TextAlignVertical.top,
                                  style: TextStyle(
                                      color: Color.fromRGBO(51, 51, 51, 1)),
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 15.0, horizontal: 14.0),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color.fromRGBO(
                                              204, 204, 204, 1), //边线颜色为黄色
                                          width: 0.50, //边线宽度为2
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8), //边角为30
                                        ),
                                      ),
                                      enabled: false),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Bank',
                              style: titleDefault,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 46,
                              padding: const EdgeInsets.only(right: 12),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(
                                      width: 0.5,
                                      color: Color.fromRGBO(204, 204, 204, 1))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: 'Please choose',
                                          hintStyle: lableDefault,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                          enabled: false),
                                    ),
                                  ),
                                  Image.asset(
                                    'icon/downArrow.png',
                                    width: 12,
                                    height: 12,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Account Number',
                              style: titleDefault,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 46,
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                controller: _controllerCurrency,
                                keyboardType: TextInputType.number,
                                textAlignVertical: TextAlignVertical.top,
                                style: const TextStyle(
                                  color: Color.fromRGBO(51, 51, 51, 1),
                                ),
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 15.0, horizontal: 14.0),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(25, 116, 254, 1)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(204, 204, 204, 1)),
                                  ),
                                  enabled: true,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      // Container(
                      //   width: double.infinity,
                      //   child: Text(
                      //     '*Account Number-Please enter 6~30 numbers',
                      //     style: TextStyle(
                      //         fontSize: 12,
                      //         color: Color.fromRGBO(248, 38, 67, 1)),
                      //   ),
                      // )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(25, 116, 254, 1),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: InkWell(
                    onTap: () {
                      // if (_formKey.currentState!.validate()) {
                      //   print(_formKey);
                      // }
                      ;
                    },
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
