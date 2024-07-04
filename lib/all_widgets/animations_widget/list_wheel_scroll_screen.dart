import 'package:flutter/material.dart';
class list_wheel_scroll_screen extends StatefulWidget {
  const list_wheel_scroll_screen({super.key});

  @override
  State<list_wheel_scroll_screen> createState() => _list_wheel_scroll_screenState();
}

class _list_wheel_scroll_screenState extends State<list_wheel_scroll_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list_wheel_scroll_screen"),

      ),
      body: ListWheelScrollView(

        children:[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12)
            ),
              child: Image.network("https://i.pinimg.com/736x/e7/92/79/e79279ebc90cd830ff418b7f6aacc53b--wallpapers-wallpapers-fall-leaves.jpg",width: 300,)),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => using_list(),));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12)
              ),
                child:  Image.network("https://imgc.artprintimages.com/img/print/the-autumn-in-winter_u-l-phfacn0.jpg?artHeight=550&artPerspective=n&artWidth=550&background=fbfbfb",width: 200,)),
          ),
          Image.network("https://i.pinimg.com/736x/e7/92/79/e79279ebc90cd830ff418b7f6aacc53b--wallpapers-wallpapers-fall-leaves.jpg",width: 300,),
           Image.network("https://imgc.artprintimages.com/img/print/the-autumn-in-winter_u-l-phfacn0.jpg?artHeight=550&artPerspective=n&artWidth=550&background=fbfbfb",width: 200,),
          Image.network("https://i.pinimg.com/736x/e7/92/79/e79279ebc90cd830ff418b7f6aacc53b--wallpapers-wallpapers-fall-leaves.jpg",width: 300,),
           Image.network("https://imgc.artprintimages.com/img/print/the-autumn-in-winter_u-l-phfacn0.jpg?artHeight=550&artPerspective=n&artWidth=550&background=fbfbfb",width: 200,),
          Image.network("https://i.pinimg.com/736x/e7/92/79/e79279ebc90cd830ff418b7f6aacc53b--wallpapers-wallpapers-fall-leaves.jpg",width: 300,),
        ],
        itemExtent: 400,

      ),
    );
  }
}
class using_list extends StatefulWidget{
  State createState()=>using_list2();
}
class using_list2 extends State<using_list>{
   List arrMobileno=[
    "12121 12112",
    "12121 12122",
    "12121 12123",
    "12121 12124",
    "12121 12125",
    "12121 12126",
    "12121 12127",
    "12121 12128",
    "12121 12129",
    "12121 12128",
    "12121 21256",
    "12121 12243",
  ];
  Widget build(BuildContext  context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone"),
      ),
      body: Center(
        child: RefreshIndicator(
          onRefresh: ()async {
            await Future.delayed(Duration(microseconds: 10));
            int newValue = arrMobileno.length+1;
            setState(() {

            });
            arrMobileno.add("12321 121${newValue}");

          },
          child: ListWheelScrollView(
            itemExtent: 120,
            children: arrMobileno.map((e) {
              return Padding(
                  padding:EdgeInsets.all(12),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                   boxShadow: [
                      new BoxShadow(color: Colors.black,blurRadius: 2,offset: new Offset(4.0, 6.0))
                    ]

                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(

                          color:  Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 4,
                              offset: Offset(4.0,6.0)
                            )
                          ]


                        ),
                        child: const CircleAvatar(
                          radius: 30,
                           backgroundImage: AssetImage("accets/th.jpg"),
                           // child: Image.asset("accets/th.jpg"),
                        ),
                       ),
                      Column(
                        children: [
                          Text("Name:",style: TextStyle(fontSize: 34),),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("$e",style: TextStyle(fontSize: 15),),
                          ),
                          const Divider(
                            height: 2,
                          )

                        ],
                      ),
                      Padding(
                        padding:EdgeInsets.only(left: 34),
                        child: IconButton(
                          icon: Icon(Icons.delete,size: 29,color: Colors.red,),
                          onPressed: (){
                            setState(() {
                              arrMobileno.remove(e);

                            });
                          },
                        ),
                      ),
                      const Padding(
                        padding:EdgeInsets.only(left: 6),
                        child: Icon(Icons.call,size: 34,),
                      )
                    ],
                  ),
                ),

              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
