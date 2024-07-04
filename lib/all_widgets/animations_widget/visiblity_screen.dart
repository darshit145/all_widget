import 'package:flutter/material.dart';
class visiblity_screen extends StatefulWidget {
  const visiblity_screen({super.key});

  @override
  State<visiblity_screen> createState() => _visiblity_screenState();
}

class _visiblity_screenState extends State<visiblity_screen> {
  bool isvisible=false;
  String name ="Show";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("visiblity_screen"),
        // backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              setState(() {
                isvisible=!isvisible;
                name=(isvisible)?"Hide":"Show";
              });
            }, child: Text("$name",style: TextStyle(fontSize: 20,color: Colors.blueGrey),)),
            Image.asset(
              width: 320,
              "accets/gg.png",
            ),
            SizedBox(height: 30,),
            Visibility(
              visible: isvisible,
                child: InkWell(
                    child: Image.asset(
                      "accets/gg.png",width: 320,
                    ),
                  onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => will_pop_screen(),));

                  },
                )
            )
          ],
        ),
      ),
    );
  }
}
class will_pop_screen  extends StatelessWidget{
  Widget build(BuildContext context){
    return WillPopScope(
      child: Scaffold(

        appBar: AppBar(
          leading: Icon(Icons.arrow_back,),
          title: Text("will_pop_screen"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text("Back"),
          ),
        ),
      ),
      onWillPop: ()async{
        return false;
      }
    );
  }
}