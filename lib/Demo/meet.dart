import 'package:flutter/material.dart';

import "package:all_widgets/Demo/custom.dart";

int customColor(String colorCode) {
  String colors = "0xff" + colorCode;
  colors = colors.replaceAll("#", "");
  return int.parse(colors);
}

List manCategoryTab = ["1", "2", "3", "4"];
List category = [true, false, false];
List gender = [true, false];
late List chooseCategory ;
List rangeHrs = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
List hor=["1","2","3","4","5","6"];
// List minutes = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50];
// List priceType = ["Starting", "Fixed"];
// List maxService = [1, 2, 3, 4, 5, 6, 7];

class AddServicesScreen extends StatefulWidget {
  const AddServicesScreen({super.key});

  @override
  State<AddServicesScreen> createState() => _AddServicesScreenState();
}

class _AddServicesScreenState extends State<AddServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DefaultTextStyle(
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
          child: Row(
            children: [
              if (category[0] == true)
                gender[0]
                    ? Text("Add Male Services")
                    : Text("Add Female Services"),
              if (category[1] == true) Text("Add Female Services"),
              if (category[2] == true) Text("Add Male Services"),
            ],
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Color(customColor("ea0a8e")),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.headset_mic,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomButton(
          color: Color(customColor("2c2d32")),
          onPressed: () {},
          child: Text(
            "Submit",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 12, left: 10, right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategoryTextField(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  style: TextStyle(height: 1),
                  decoration: InputDecoration(
                    label: Text(
                      "Service Name",
                      style: TextStyle(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Service Duration",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  ServiceDurationHrs(),
                  SizedBox(
                    width: 20,
                  ),
                  // ServiceDurationMin(),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Pricing",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 18,
              ),
              // Row(
              //   children: [
              //     PriceType(),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     PriceDetails()
              //   ],
              // ),
              // SizedBox(
              //   height: 18,
              // ),
              // SpecialPrice(),
              // Text(
              //   "Note : Max 25% Special Discount Allowed.",
              //   style: TextStyle(color: Colors.red),
              // ),
              // SizedBox(
              //   height: 18,
              // ),
              // MaxServiceQuantity(),
              // SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   child: ServiceDescription(),
              //   height: 100,
              // )
            ],
          ),
        ),
      ),
    );
  }
}

List numIndex = [0];

class CategoryTextField extends StatefulWidget {
  const CategoryTextField({super.key});

  @override
  State<CategoryTextField> createState() => _CategoryTextFieldState();
}

class _CategoryTextFieldState extends State<CategoryTextField> {


  // TextEditingController _controller = TextEditingController();
  // GlobalKey<FormState> _key = GlobalKey();
  String name = manCategoryTab[0];

void Fun(){
  setState(() {

  });
}
void initState(){
  super.initState();
  chooseCategory = List.generate(
      manCategoryTab.length,
          (index) => false);
}
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        readOnly: true,

        // initialValue: name,
        // controller: TextEditingController()..text = "HAir.." ,

        onTap: () {
          setState(() {
            showModalBottomSheet(
              isScrollControlled: true,
              // enableDrag: false,

              context: context,
              builder: (context) {
                return StatefulBuilder(
                  builder: (context, setState) {
                    return SizedBox(
                      height: 450,
                      // color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: Text(
                              "CHOOSE CATEGORY",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      chooseCategory=List.generate(chooseCategory.length, (index) => false);
                                      name=manCategoryTab[index];
                                      print(chooseCategory[index]);


                                      chooseCategory[index] =!chooseCategory[index];
                                      print(chooseCategory[index]);


                                      // name = manCategoryTab[index];
                                      print(name);
                                      Fun();

                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 50,
                                        alignment: Alignment.centerLeft,
                                        color: chooseCategory[index]
                                            ? Colors.grey.shade400
                                            : Colors.white,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.all(8.0),
                                          child:
                                              Text(manCategoryTab[index]),
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 0.1,
                                      )
                                    ],
                                  ),
                                );
                              },
                              itemCount: manCategoryTab.length,
                              scrollDirection: Axis.vertical,
                            ),
                          ),
                          Divider(
                            height: 1,
                          )
                        ],
                      ),
                    );
                  },
                );
              },
            );
          });
        },
        showCursor: false,
        style: TextStyle(height: 1),
        decoration: InputDecoration(
          hintText: name,
            labelStyle: TextStyle(color: Colors.grey.shade500),
            label: Text("Choose Category"),
            focusedBorder: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(),
            suffixIcon: Container(
              width: 25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.keyboard_arrow_up_outlined),
                  Icon(Icons.keyboard_arrow_down_outlined),
                ],
              ),
            )),
      ),
    );
  }
}
class ServiceDurationHrs extends StatefulWidget {
  const ServiceDurationHrs({super.key});

  @override
  State createState() => _ok();
}

class _ok extends State<ServiceDurationHrs> {


  // TextEditingController _controller = TextEditingController();
  // GlobalKey<FormState> _key = GlobalKey();
  String name = hor[0];

void Fun(){
  setState(() {

  });
}
void initState(){
  super.initState();
  chooseCategory = List.generate(
      hor.length,
          (index) => false);
}
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        readOnly: true,

        // initialValue: name,
        // controller: TextEditingController()..text = "HAir.." ,

        onTap: () {
          setState(() {
            showModalBottomSheet(
              isScrollControlled: true,
              // enableDrag: false,

              context: context,
              builder: (context) {
                return StatefulBuilder(
                  builder: (context, setState) {
                    return SizedBox(
                      height: 450,
                      // color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: Text(
                              "CHOOSE CATEGORY",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      chooseCategory=List.generate(chooseCategory.length, (index) => false);
                                      name=hor[index];
                                      print(chooseCategory[index]);


                                      chooseCategory[index] =!chooseCategory[index];
                                      print(chooseCategory[index]);


                                      // name = manCategoryTab[index];
                                      print(name);
                                      Fun();

                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 50,
                                        alignment: Alignment.centerLeft,
                                        color: chooseCategory[index]
                                            ? Colors.grey.shade400
                                            : Colors.white,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.all(8.0),
                                          child:
                                              Text(hor[index]),
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        thickness: 0.1,
                                      )
                                    ],
                                  ),
                                );
                              },
                              itemCount: hor.length,
                              scrollDirection: Axis.vertical,
                            ),
                          ),
                          Divider(
                            height: 1,
                          )
                        ],
                      ),
                    );
                  },
                );
              },
            );
          });
        },
        showCursor: false,
        style: TextStyle(height: 1),
        decoration: InputDecoration(
          hintText: name,
            labelStyle: TextStyle(color: Colors.grey.shade500),
            label: Text("Choose Category"),
            focusedBorder: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(),
            suffixIcon: Container(
              width: 25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.keyboard_arrow_up_outlined),
                  Icon(Icons.keyboard_arrow_down_outlined),
                ],
              ),
            )),
      ),
    );
  }
}

// //**** Service Duration Minutes
// class ServiceDurationMin extends StatefulWidget {
//   const ServiceDurationMin({super.key});
//   @override
//   State<ServiceDurationMin> createState() => _ServiceDurationMinState();
// }
//
// class _ServiceDurationMinState extends State<ServiceDurationMin> {
//   GlobalKey<FormState> _hrKey = GlobalKey();
//   var hrCount = minutes[0];
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 50,
//       width: 160,
//       child: Form(
//           key: _hrKey,
//           child: SizedBox(
//             height: 50,
//             child: TextFormField(
//               readOnly: true,
//               validator: (value) {},
//               initialValue: "${hrCount.toString()} Min",
//
//               // controller: TextEditingController()..text = "HAir.." ,
//               onChanged: (value) {
//                 hrCount = value;
//               },
//               // scribbleEnabled: false,
//               onTap: () {
//                 setState(() {
//                   showModalBottomSheet(
//                     isScrollControlled: true,
//                     // enableDrag: false,
//                     shape: OutlineInputBorder(
//                       borderSide: BorderSide.none,
//                     ),
//                     context: context,
//                     builder: (context) {
//                       return StatefulBuilder(
//                         builder: (context, setState) {
//                           return SizedBox(
//                             height: 450,
//                             // color: Colors.white,
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Center(
//                                       child: Text(
//                                     "Service Duration In Min",
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                   )),
//                                 ),
//                                 SizedBox(
//                                   height: 413,
//                                   width: 500,
//                                   child: ListView.builder(
//                                     itemBuilder: (context, index) {
//                                       return InkWell(
//                                         onTap: () {
//                                           setState(() {
//                                             chooseCategory = List.generate(
//                                                 chooseCategory.length,
//                                                 (index) => false);
//                                             chooseCategory[index] =
//                                                 !chooseCategory[index];
//                                             // hrCount = manCategoryTab[index];
//                                             // print(hrCount);
//                                           });
//                                           Navigator.pop(context);
//                                         },
//                                         child: Column(
//                                           children: [
//                                             Container(
//                                               height: 50,
//                                               alignment: Alignment.centerLeft,
//                                               color: chooseCategory[index]
//                                                   ? Colors.grey.shade400
//                                                   : Colors.white,
//                                               child: Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(8.0),
//                                                 child: Text(minutes[index]
//                                                     .toString()
//                                                     .toString()),
//                                               ),
//                                             ),
//                                             Divider(
//                                               height: 1,
//                                               thickness: 0.1,
//                                             )
//                                           ],
//                                         ),
//                                       );
//                                     },
//                                     itemCount: minutes.length,
//                                     scrollDirection: Axis.vertical,
//                                   ),
//                                 ),
//                                 Divider(
//                                   height: 1,
//                                 )
//                               ],
//                             ),
//                           );
//                         },
//                       );
//                     },
//                   );
//                 });
//               },
//               showCursor: false,
//               style: TextStyle(height: 1),
//               decoration: InputDecoration(
//                   labelStyle: TextStyle(color: Colors.grey.shade500),
//                   label: Text("Minutes"),
//                   focusedBorder: OutlineInputBorder(),
//                   enabledBorder: OutlineInputBorder(),
//                   suffixIcon: Container(
//                     width: 25,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.keyboard_arrow_up_outlined),
//                         Icon(Icons.keyboard_arrow_down_outlined),
//                       ],
//                     ),
//                   )),
//             ),
//           )),
//     );
//   }
// }
//
// //**** Price Type
// class PriceType extends StatefulWidget {
//   const PriceType({super.key});
//
//   @override
//   State<PriceType> createState() => _PriceTypeState();
// }
//
// class _PriceTypeState extends State<PriceType> {
//   GlobalKey<FormState> _hrKey = GlobalKey();
//   var hrCount = priceType[0];
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 50,
//       width: 160,
//       child: Form(
//           key: _hrKey,
//           child: SizedBox(
//             height: 50,
//             child: TextFormField(
//               readOnly: true,
//               validator: (value) {},
//               initialValue: "${hrCount}",
//
//               // controller: TextEditingController()..text = "HAir.." ,
//               onChanged: (value) {
//                 hrCount = value;
//               },
//               // scribbleEnabled: false,
//               onTap: () {
//                 setState(() {
//                   showModalBottomSheet(
//                     isScrollControlled: true,
//                     // enableDrag: false,
//                     shape: OutlineInputBorder(
//                       borderSide: BorderSide.none,
//                     ),
//                     context: context,
//                     builder: (context) {
//                       return StatefulBuilder(
//                         builder: (context, setState) {
//                           return SizedBox(
//                             height: 450,
//                             // color: Colors.white,
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Center(
//                                       child: Text(
//                                     "Service Duration In Min",
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                   )),
//                                 ),
//                                 SizedBox(
//                                   height: 413,
//                                   width: 500,
//                                   child: ListView.builder(
//                                     itemBuilder: (context, index) {
//                                       return InkWell(
//                                         onTap: () {
//                                           setState(() {
//                                             chooseCategory = List.generate(
//                                                 chooseCategory.length,
//                                                 (index) => false);
//                                             chooseCategory[index] =
//                                                 !chooseCategory[index];
//                                             // hrCount = manCategoryTab[index];
//                                             // print(hrCount);
//                                           });
//                                           Navigator.pop(context);
//                                         },
//                                         child: Column(
//                                           children: [
//                                             Container(
//                                               height: 50,
//                                               alignment: Alignment.centerLeft,
//                                               color: chooseCategory[index]
//                                                   ? Colors.grey.shade400
//                                                   : Colors.white,
//                                               child: Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(8.0),
//                                                 child: Text(priceType[index]
//                                                     .toString()),
//                                               ),
//                                             ),
//                                             Divider(
//                                               height: 1,
//                                               thickness: 0.1,
//                                             )
//                                           ],
//                                         ),
//                                       );
//                                     },
//                                     itemCount: priceType.length,
//                                     scrollDirection: Axis.vertical,
//                                   ),
//                                 ),
//                                 Divider(
//                                   height: 1,
//                                 )
//                               ],
//                             ),
//                           );
//                         },
//                       );
//                     },
//                   );
//                 });
//               },
//               showCursor: false,
//               style: TextStyle(height: 1),
//               decoration: InputDecoration(
//                   labelStyle: TextStyle(color: Colors.grey.shade500),
//                   label: Text("Price Type"),
//                   focusedBorder: OutlineInputBorder(),
//                   enabledBorder: OutlineInputBorder(),
//                   suffixIcon: Container(
//                     width: 25,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.keyboard_arrow_up_outlined),
//                         Icon(Icons.keyboard_arrow_down_outlined),
//                       ],
//                     ),
//                   )),
//             ),
//           )),
//     );
//   }
// }
//
// //****PriceDetails
// class PriceDetails extends StatefulWidget {
//   const PriceDetails({super.key});
//
//   @override
//   State<PriceDetails> createState() => _PriceDetailsState();
// }
//
// class _PriceDetailsState extends State<PriceDetails> {
//   GlobalKey<FormState> _hrKey = GlobalKey();
//   var hrCount = priceType[0];
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 50,
//       width: 160,
//       child: Form(
//           key: _hrKey,
//           child: SizedBox(
//             height: 50,
//             child: TextFormField(
//               validator: (value) {},
//               // initialValue: "${hrCount}",
//               // controller: TextEditingController()..text = "HAir.." ,
//               onChanged: (value) {
//                 hrCount = value;
//               },
//               keyboardType: TextInputType.number,
//               style: TextStyle(height: 1),
//               decoration: InputDecoration(
//                   labelStyle: TextStyle(color: Colors.grey.shade500),
//                   label: Text("Price"),
//                   focusedBorder: OutlineInputBorder(),
//                   enabledBorder: OutlineInputBorder(),
//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.only(top: 15.0),
//                     child: Text(
//                       "₹",
//                       textAlign: TextAlign.center,
//                     ),
//                   )),
//             ),
//           )),
//     );
//   }
// }
//
// //**** Special Price
// class SpecialPrice extends StatefulWidget {
//   const SpecialPrice({super.key});
//   @override
//   State<SpecialPrice> createState() => _SpecialPriceState();
// }
//
// class _SpecialPriceState extends State<SpecialPrice> {
//   GlobalKey<FormState> _hrKey = GlobalKey();
//   var hrCount = priceType[0];
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 50,
//       // width: 160,
//       child: Form(
//           key: _hrKey,
//           child: SizedBox(
//             height: 50,
//             child: TextFormField(
//               validator: (value) {},
//               onChanged: (value) {
//                 hrCount = value;
//               },
//               keyboardType: TextInputType.number,
//               style: TextStyle(height: 1),
//               decoration: InputDecoration(
//                   labelStyle: TextStyle(color: Colors.black87),
//                   label: Text("Special Price"),
//                   focusedBorder: OutlineInputBorder(),
//                   enabledBorder: OutlineInputBorder(),
//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.only(top: 15.0),
//                     child: Text(
//                       "₹",
//                       textAlign: TextAlign.center,
//                     ),
//                   )),
//             ),
//           )),
//     );
//   }
// }
//
// //**** Max Service Quantity
// class MaxServiceQuantity extends StatefulWidget {
//   const MaxServiceQuantity({super.key});
//
//   @override
//   State<MaxServiceQuantity> createState() => _MaxServiceQuantityState();
// }
//
// class _MaxServiceQuantityState extends State<MaxServiceQuantity> {
//   GlobalKey<FormState> _hrKey = GlobalKey();
//   var hrCount = maxService[0];
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 50,
//       child: Form(
//           key: _hrKey,
//           child: SizedBox(
//             height: 50,
//             child: TextFormField(
//               readOnly: true,
//               validator: (value) {},
//               initialValue: "${hrCount.toString()}  ",
//
//               // controller: TextEditingController()..text = "HAir.." ,
//               onChanged: (value) {
//                 hrCount = value;
//               },
//               // scribbleEnabled: false,
//               onTap: () {
//                 setState(() {
//                   showModalBottomSheet(
//                     isScrollControlled: true,
//                     // enableDrag: false,
//                     shape: OutlineInputBorder(
//                       borderSide: BorderSide.none,
//                     ),
//                     context: context,
//                     builder: (context) {
//                       return StatefulBuilder(
//                         builder: (context, setState) {
//                           return SizedBox(
//                             height: 450,
//                             // color: Colors.white,
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Center(
//                                       child: Text(
//                                     "Service Duration In Min",
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                   )),
//                                 ),
//                                 SizedBox(
//                                   height: 413,
//                                   width: 500,
//                                   child: ListView.builder(
//                                     itemBuilder: (context, index) {
//                                       return InkWell(
//                                         onTap: () {
//                                           setState(() {
//                                             chooseCategory = List.generate(
//                                                 chooseCategory.length,
//                                                 (index) => false);
//                                             chooseCategory[index] =
//                                                 !chooseCategory[index];
//                                             // hrCount = manCategoryTab[index];
//                                             // print(hrCount);
//                                           });
//                                           Navigator.pop(context);
//                                         },
//                                         child: Column(
//                                           children: [
//                                             Container(
//                                               height: 50,
//                                               alignment: Alignment.centerLeft,
//                                               color: chooseCategory[index]
//                                                   ? Colors.grey.shade400
//                                                   : Colors.white,
//                                               child: Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(8.0),
//                                                 child: Text(maxService[index]
//                                                     .toString()),
//                                               ),
//                                             ),
//                                             Divider(
//                                               height: 1,
//                                               thickness: 0.1,
//                                             )
//                                           ],
//                                         ),
//                                       );
//                                     },
//                                     itemCount: maxService.length,
//                                     scrollDirection: Axis.vertical,
//                                   ),
//                                 ),
//                                 Divider(
//                                   height: 1,
//                                 )
//                               ],
//                             ),
//                           );
//                         },
//                       );
//                     },
//                   );
//                 });
//               },
//               showCursor: false,
//               style: TextStyle(height: 1),
//               decoration: InputDecoration(
//                   labelStyle: TextStyle(color: Colors.grey.shade500),
//                   label: Text("Max.Service Quantily"),
//                   focusedBorder: OutlineInputBorder(),
//                   enabledBorder: OutlineInputBorder(),
//                   suffixIcon: Container(
//                     width: 25,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.keyboard_arrow_up_outlined),
//                         Icon(Icons.keyboard_arrow_down_outlined),
//                       ],
//                     ),
//                   )),
//             ),
//           )),
//     );
//   }
// }
//
// //Service Description
// class ServiceDescription extends StatefulWidget {
//   const ServiceDescription({super.key});
//
//   @override
//   State<ServiceDescription> createState() => _ServiceDescriptionState();
// }
//
// class _ServiceDescriptionState extends State<ServiceDescription> {
//   GlobalKey<FormState> _hrKey = GlobalKey();
//   var hrCount = priceType[0];
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 50,
//       child: Form(
//           key: _hrKey,
//           child: SizedBox(
//             // height: 50,
//             child: TextFormField(
//               minLines: 2,
//               maxLines: 5,
//               validator: (value) {},
//               onChanged: (value) {
//                 hrCount = value;
//               },
//               style: TextStyle(height: 1),
//               decoration: InputDecoration(
//                 labelStyle: TextStyle(color: Colors.black87),
//                 label: Text("Special Price"),
//                 focusedBorder: OutlineInputBorder(),
//                 enabledBorder: OutlineInputBorder(),
//               ),
//             ),
//           )),
//     );
//   }
// }
//
// //Custom Class
// class CustomField extends StatefulWidget {
//   final Widget? categoryList;
//   final int? itemCount;
//   final Widget? fieldText;
//   final Widget? customList;
//   final int indexM;
//   final double fieldWidth;
//   CustomField(
//       {this.categoryList,
//       this.itemCount,
//       this.fieldText,
//       this.customList,
//       required this.indexM,
//       required this.fieldWidth});
//
//   @override
//   State<CustomField> createState() => _CustomFieldState();
// }
//
// class _CustomFieldState extends State<CustomField> {
//   List modalHade = ["Service Duration In Hrs"];
//   int indexM = 0;
//
//   var onTab;
//   var color;
//   Widget? customList;
//   var fieldWidth;
//
//   // _CustomFieldState(modalText, onTab,color ,customList );
//   TextEditingController _controller = TextEditingController();
//   GlobalKey<FormState> _key = GlobalKey();
//   var nameValue = manCategoryTab[0];
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//         key: _key,
//         child: SizedBox(
//           height: 50,
//           width: fieldWidth,
//           child: TextFormField(
//             validator: (value) {},
//             initialValue: nameValue,
//             // controller: TextEditingController()..text = "HAir.." ,
//             onChanged: (value) {
//               nameValue = value;
//             },
//             // scribbleEnabled: false,
//             onTap: () {
//               setState(() {
//                 showModalBottomSheet(
//                   isScrollControlled: true,
//                   // enableDrag: false,
//                   shape: OutlineInputBorder(
//                     borderSide: BorderSide.none,
//                   ),
//                   context: context,
//                   builder: (context) {
//                     return StatefulBuilder(
//                       builder: (context, setState) {
//                         return SizedBox(
//                           height: 450,
//                           // color: Colors.white,
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Center(
//                                     child: Text(
//                                   modalHade[indexM],
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 )),
//                               ),
//                               SizedBox(
//                                   height: 413, width: 500, child: customList),
//                               Divider(
//                                 height: 1,
//                               )
//                             ],
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 );
//               });
//             },
//             showCursor: false,
//             style: TextStyle(height: 1),
//             decoration: InputDecoration(
//               labelStyle: TextStyle(color: Colors.grey.shade500),
//               label: Text(modalHade[indexM]),
//               focusedBorder: OutlineInputBorder(),
//               enabledBorder: OutlineInputBorder(),
//             ),
//           ),
//         ));
//   }
// }
