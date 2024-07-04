import 'package:flutter/material.dart';
class StepperWidgetScreen extends StatefulWidget {
  const StepperWidgetScreen({super.key});

  @override
  State<StepperWidgetScreen> createState() => _StepperWidgetScreenState();
}

class _StepperWidgetScreenState extends State<StepperWidgetScreen> {

  final keyForName=GlobalKey<FormState>();
  final keyForNo=GlobalKey<FormState>();

  String formName='';

  String formMo='';

  int stepIndex=2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StepperWidgetScreen"),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          connectorThickness: 3,
        
          elevation: 10,
        
        
          onStepTapped: (value) {
            setState(() {
              stepIndex=value;
            });
          },
          currentStep: stepIndex ,
          onStepContinue: () {
            setState(() {
              if(stepIndex==1){
                if(keyForNo.currentState?.validate()??false){
                  stepIndex++;
                }
              }else if(stepIndex==0){
                if(keyForName.currentState?.validate()??false){
                  stepIndex++;
        
                }
              }else{

              }
            });
          },
          onStepCancel: () {
            setState(() {
              if(stepIndex>0){
                stepIndex--;
        
              }
            });
          },
          steps: stepsForStepper()!,
          type: StepperType.vertical,
        
        ),
      ),
    );
  }
  List<Step> stepsForStepper()=>
    [
      Step(
          state: stepIndex>0?StepState.complete:StepState.indexed,

          isActive: stepIndex>=0,
          title: Text("Account"),
          content: Column(
            children: [
              Form(

                onChanged: () {

                },
                autovalidateMode: AutovalidateMode.always,
                key: keyForName,
                  child:TextFormField(
                    onChanged: (value) {
                      formName=value;
                    },

                    decoration: InputDecoration(
                      label: Text("@ Eneter Your Name"),
                    ),
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Enter Some Property";
                      }
                        return null ;

                    },
                  )
              )
            ],
          )
      ),
      Step(
        state: stepIndex>1?StepState.complete:StepState.indexed,
        isActive: stepIndex>=1,
          title: Text("Balance"),
          content: Form(

            key: keyForNo,
            autovalidateMode: AutovalidateMode.always,
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text("Enter Mobile no:->")
              ),
              onChanged: (value) {
                formMo=value;
              },
              validator: (value) {
                if(value!.isEmpty){
                  return "Enter Proper Mobile No:";
                }
                return null;
              },
            ),
          )
      ),

      Step(
        state: stepIndex>2?StepState.complete:StepState.indexed,

        isActive: stepIndex>=2,
          title:Text("Home") ,
          content: Container(
            child: Column(
              children: [
                Center(
                  child: Text("Your Name is: $formName"),
                ),
                Center(
                  child: Text("Your Moblie no is: $formMo"),
                )

              ],
            ),
          ),
      )
    ];

}
