import 'package:all_widgets/all_widgets/tabber_screen.dart';
import 'package:flutter/material.dart';
import 'package:all_widgets/all_widgets/container_widget_screen.dart';
import 'package:all_widgets/all_widgets/raw_and_column_screen.dart';
import 'package:all_widgets/all_widgets/text_widget_screen.dart';
import 'package:all_widgets/all_widgets/rich_text_widget_screen.dart';
import 'package:all_widgets/all_widgets/textField_screen.dart';
import 'package:all_widgets/all_widgets/button_screen.dart';
import 'package:all_widgets/all_widgets/stack_widget_screen.dart';
import 'package:all_widgets/all_widgets/textformfield_widget_screen.dart';
import 'package:all_widgets/all_widgets/alert_dialog_screen.dart';
import 'package:all_widgets/all_widgets/icon_screen.dart';
import 'package:all_widgets/all_widgets/images_screen.dart';
import 'package:all_widgets/all_widgets/card_screen.dart';
import 'package:all_widgets/all_widgets/list_viewbuilder_screen.dart';
import 'package:all_widgets/all_widgets/drawer_screen.dart';
import 'package:all_widgets/all_widgets/list_screen.dart';
import 'package:all_widgets/Demo/DEMO.dart';
import 'package:all_widgets/all_widgets/grid_view_screen.dart';
import 'package:all_widgets/all_widgets/toast_screen.dart';
import 'package:all_widgets/all_widgets/checkbox_screen.dart';
import 'package:all_widgets/all_widgets/radiobutton_screen.dart';
import 'package:all_widgets/all_widgets/progress_indicator_screen.dart';
import 'package:all_widgets/all_widgets/snackbar_screen.dart';
import 'package:all_widgets/all_widgets/tooltip_screen.dart';
import 'package:all_widgets/all_widgets/slider_screen.dart';
import 'package:all_widgets/all_widgets/animations_widget/image_slider_screen.dart';
import 'package:all_widgets/all_widgets/switch_screen.dart';
import 'package:all_widgets/all_widgets/button_navigation_bar_screen.dart';
import 'package:all_widgets/all_widgets/table_screen.dart';
import 'package:all_widgets/all_widgets/table_calender_screen.dart';
import 'package:all_widgets/all_widgets/animations_widget/animate_screen.dart';
import 'package:all_widgets/all_widgets/position_screen.dart';
import 'package:all_widgets/Demo/DEMO2.dart';
import 'package:all_widgets/all_widgets/floating_action_button.dart';
import 'package:all_widgets/all_widgets/toggle_button_screen.dart';
import 'package:all_widgets/all_widgets/animations_widget/visiblity_screen.dart';
import 'package:all_widgets/all_widgets/vertical_devider_screen.dart';
import 'package:all_widgets/all_widgets/value_listanable_screen.dart';
import 'package:all_widgets/all_widgets/animations_widget/tween_animationbulder_screen.dart';
import 'package:all_widgets/all_widgets/animations_widget/animated_opacity_screen.dart';
import 'package:all_widgets/all_widgets/animations_widget/cross_fad_screen.dart';
import 'package:all_widgets/all_widgets/animations_widget/hero_animation_screen.dart';
import 'package:all_widgets/all_widgets/animations_widget/list_wheel_scroll_screen.dart';
import 'package:all_widgets/all_widgets/cliper_ract_widget_screen.dart';
import 'package:all_widgets/all_widgets/animations_widget/random_color_screen.dart';
import 'package:all_widgets/all_widgets/animations_widget/backgroundimage_screen.dart';
import 'package:all_widgets/all_widgets/animations_widget/animated_backgroundimage_screen.dart';
import 'package:get/get.dart';
import 'package:all_widgets/all_widgets/sliver_appbar_widgwt_screen.dart';
import 'package:all_widgets/Demo/DeMo1.dart';
import 'package:all_widgets/all_widgets/shimmer_loading_screen.dart';
import 'package:all_widgets/all_widgets/appbar_screen.dart';
import 'package:all_widgets/all_widgets/popup_menubutton_screen.dart';
import 'package:all_widgets/all_widgets/expansionpanel_screen.dart';
import 'package:all_widgets/all_widgets/expansion_tileWidget_screen.dart';
import 'package:all_widgets/all_widgets/tabbar_view_screen.dart';
import 'package:all_widgets/all_widgets/date_picker_widget_screen.dart';
import 'package:all_widgets/all_widgets/drop_down_widgt_screen.dart';
import 'package:all_widgets/all_widgets/refresh_indicator_widget_screen.dart';
import 'package:all_widgets/all_widgets/stepper_widget_screen.dart';
import 'package:all_widgets/all_widgets/aspact_ratio_widget_screen.dart';
import 'package:all_widgets/all_widgets/fractional_sizebox_screen.dart';
import 'package:all_widgets/all_widgets/dragable_widget_screen.dart';
import 'package:all_widgets/all_widgets/absort_pointer_ignore_pointer_screen.dart';
import 'package:all_widgets/all_widgets/clip_path_widget_screen.dart';
import 'package:all_widgets/all_widgets/notification_listener_screnn.dart';
import 'package:all_widgets/all_widgets/indexed_stack_screen.dart';
import 'package:all_widgets/all_widgets/reordarable_list_screen.dart';
import 'package:all_widgets/all_widgets/animations_widget/animated_switcher_widget_scree.dart';
import 'package:all_widgets/all_widgets/fractional_tranlation_widget_screen.dart';
import 'package:all_widgets/Demo/Demo_Of_GlobalKey.dart';
import 'package:all_widgets/Demo/Demo_Value_Key.dart';
import 'package:all_widgets/all_widgets/sized_overflow_widget_screen.dart';
import 'package:all_widgets/Demo/meet.dart';
import 'package:all_widgets/all_widgets/animations_widget/animated_list_widget_screen.dart';
import 'package:all_widgets/all_widgets/animations_widget/animated_icon_widget_screen.dart';
import 'package:all_widgets/all_widgets/animations_widget/animated_posined_widget.dart';
import 'package:all_widgets/all_widgets/scrollablelisttabscroller_screen.dart';
 class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(title: Text('Home Page',style: TextStyle(fontSize: 23),),
     // backgroundColor: Colors.cyanAccent,
    ),
      // /drawer: drawer_screen(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(.0),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ContainerWidgetScreen();
                      },));
                    }, child: Text("Container")),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Raw_and_Column(),));
                  }, child: Text("Column N Raw")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Text_widget_screen();
                    },));
                  }, child: Text("Text")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Rich_Text_widget();
                    },));
                  }, child: Text("Rich_Text_widget")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return TextField_Screen();
                    },));
                  }, child: Text("TextField_Screen")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Button_Screen();
                    },));
                  }, child: Text("ButtonS")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Stack_Widget_Screen(),));
                  }, child: Text("Stack_Widget_Screen")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Form_Widget_Screen(),));
                  }, child: Text("Form_Widget")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return alert_dialog_screen();
                    },));
                  }, child: Text("alert_dialog_screen")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => icon_screen(),));
                  }, child: Text("Icon")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> image_screen()));
                  }, child: Text(" image_screen")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>card_screen()));
                  }, child: Text("card_widget")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>tabber_screen()));
                  }, child: Text("Tabber_")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => list_viewbuilder_screen(),));
                  }, child: Text("list_viewbuilder")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>drawer_screen()));
                  }, child: Text("drawer_screen")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>list_screen()));
                  }, child: Text('list')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>gridviewscreen()));
                  }, child: Text('Grid View')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>toasted_screen()));
                  }, child: Text('toasted_screen')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>checkbox_screen()));
                  }, child: Text('checkbox_screen')),
                ),
              ),



              //RADIO BTN
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>radiobutton_screen()));
                  }, child: Text('radiobutton_screen')),
                ),
              ),


              //Progress Bar
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>progressindicator()));
                  }, child: Text('progressindicator')),
                ),
              ),

              //snackbar_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>snackbar_screen()));
                  }, child: Text('snackbar_screen')),
                ),
              ),
              //tooltip_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>tooltip_screen()));
                  }, child: Text('tooltip_screen')),
                ),
              ),
              //slider_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>slider_screen()));
                  }, child: Text('range_slider')),
                ),
              ),
              // image_slider_screen


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>image_slider_screen()));
                  }, child: Text('image_slider_screen')),
                ),
              ),
              //switch_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>switch_screen()));
                  }, child: Text('switch_screen')),
                ),
              ),
              //button_navigation_bar_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>button_navigation_bar_screen()));
                  }, child: Text('button_navigation_bar_screen')),
                ),
              ),
              //table_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>table_screen()));
                  }, child: Text('table_screen')),
                ),
              ),
              //table_calender_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>table_calender_screen()));
                  }, child: Text('table_calender_screen')),
                ),
              ),
              //animate_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>animate_screen()));
                  }, child: Text('animate_screen')),
                ),
              ),
              //position_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>position_screen()));
                  }, child: Text('position_screen')),
                ),
              ),




              //floting_act_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>floting_act_screen()));
                  }, child: Text('floting_act_screen')),
                ),
              ),
              //toggle_button_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>toggle_button_screen()));
                  }, child: Text('toggle_button_screen')),
                ),
              ),
              //visiblity_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>visiblity_screen()));
                  }, child: Text('visiblity_screen')),
                ),
              ),
              //vertical_devider_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>vertical_devider_screen()));
                  }, child: Text('vertical_devider_screen')),
                ),
              ),
              //value_listanablebuilder_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>value_listanablebuilder_screen()));
                  }, child: Text('value_listanablebuilder_screen')),
                ),
              ),
              //tween_animation_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>tween_animation_screen()));
                  }, child: Text('tween_animation_screen')),
                ),
              ),
              //animated_opacity_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>animated_opacity_screen()));
                  }, child:const Text('animated_opacity_screen')),
                ),
              ),
              //cross_feed_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>cross_feed_screen()));
                  }, child:const Text('cross_feed_screen')),
                ),
              ),
              //hero_animation_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>hero_animation_screen()));
                  }, child:const Text('hero_animation_screen')),
                ),
              ),
              //list_wheel_scroll_screen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>list_wheel_scroll_screen()));
                  }, child:const Text('list_wheel_scroll_screen')),
                ),
              ),
              //CliperWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CliperWidgetScreen()));
                  }, child:const Text('CliperWidgetScreen')),
                ),
              ),
              //RandomColorScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RandomColorScreen()));
                  }, child:const Text('RandomColorScreen')),
                ),
              ),

              //BackGroundImg
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Get.to(
                            () => const BackGroundImg(),
                          transition: Transition.rightToLeftWithFade,
                          duration:const Duration(seconds: 1)

                        );

                      }, child:const Text('BackGroundImg')),
                ),
              ),
              //AnimatedImageBackGround
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Get.to(
                                () => const AnimatedImageBackGround(),
                            transition: Transition.rightToLeftWithFade ,
                            duration:const Duration(seconds: 1)


                        );
                      }, child:const Text('AnimatedImageBackGround')),
                ),
              ),
              //SliverAppBapWidget
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Get.to(
                            ()=>SliverAppBapWidget(),
                          transition: Transition.rightToLeftWithFade,
                          duration: Duration(seconds: 1)
                        );
                      }, child:const Text('SliverAppBapWidget')),
                ),
              ),
              //ShimmerLoadingScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Get.to(
                                ()=>ShimmerLoadingScreen(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(seconds: 1)
                        );
                      }, child:const Text('ShimmerLoadingScreen')),
                ),
              ),
              //ThemeDemoScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AppBarScreen()));
                      }, child:const Text('AppBarScreen')),
                ),
              ),
              //PopupMenuButton
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PopupMenuButtonScreen()));
                      }, child:const Text('PopupMenuButton')),
                ),
              ),
              //ExpansionPanel
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ExpansionPanelScreen()));
                      }, child:const Text('ExpansionPanel')),
                ),
              ),
              //ExpansionTileWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ExpansionTileWidgetScreen()));
                      }, child:const Text('ExpansionTileWidgetScreen')),
                ),
              ),
              //TabBarViewScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TabBarViewScreen()));
                      }, child:const Text('TabBarViewScreen')),
                ),
              ),
              //DatePickerWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DatePickerWidgetScreen()));
                      }, child:const Text('DatePickerWidgetScreen')),
                ),
              ),
              //DropDownWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DropDownWidgetScreen()));
                      }, child:const Text('DropDownWidgetScreen')),
                ),
              ),
              //RefreshIndicatorWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RefreshIndicatorWidgetScreen()));
                      }, child:const Text('RefreshIndicatorWidgetScreen')),
                ),
              ),
              //StepperWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>StepperWidgetScreen()));
                      }, child:const Text('StepperWidgetScreenj ')),
                ),
              ),
              //AspactRatioWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AspactRatioWidgetScreen()));
                      }, child:const Text('AspactRatioWidgetScreen')),
                ),
              ),
              //FractionalSizeBoxWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FractionalSizeBoxWidgetScreen()));
                      }, child:const Text('FractionalSizeBoxWidgetScreen')),
                ),
              ),
              //DrageAbleWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){

                         showDialog(context: context, builder: (context) {
                           return AlertDialog(
                             title: Text("Error"),
                             content: Text("This oprion is Currently unavalliable"),
                           );
                         },);
                      //  Navigator.push(context, MaterialPageRoute(builder: (context)=>DrageAbleWidgetScreen()));
                      }, child:const Text('DrageAbleWidgetScreen')),
                ),
              ),
              //AbsortPointerIgnorePointer
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AbsortPointerIgnorePointer()));
                      }, child:const Text('AbsortPointerIgnorePointer')),
                ),
              ),
              //ClipPathWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ClipPathWidgetScreen()));
                      }, child:const Text('ClipPathWidgetScreen')),
                ),
              ),
              //NotificationListenerScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationListenerScreen()));
                      }, child:const Text('NotificationListenerScreen')),
                ),
              ),
              //IndexedStackWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>IndexedStackWidgetScreen()));
                      }, child:const Text('IndexedStackWidgetScreen')),
                ),
              ),
              // ReordarAbleListWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ReordarAbleListWidgetScreen()));
                      }, child:const Text('ReordarAbleListWidgetScreen')),
                ),
              ),
              //AnimatedSwitcherWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimatedSwitcherWidgetScreen()));
                      }, child:const Text('AnimatedSwitcherWidgetScreen')),
                ),
              ),
              //FractionalWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FractionalWidgetScreen()));
                      }, child:const Text('FractionalWidgetScreen')),
                ),
              ),
              //SizedOverFlowWidget
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SizedOverFlowWidget()));
                      }, child:const Text('SizedOverFlowWidget')),
                ),
              ),
              //AnimatedListWidgetScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimatedListWidgetScreen()));
                      }, child:const Text('AnimatedListWidgetScreen')),
                ),
              ),
              // AnimatedIconScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> AnimatedIconScreen()));
                      }, child:const Text(' AnimatedIconScreen')),
                ),
              ),
              //AnimatedPostnesScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> AnimatedPostnesScreen()));
                      }, child:const Text(' AnimatedPostnesScreen')),
                ),
              ),
              // /ScrollableListTabScrollerScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ScrollableListTabScrollerScreen()));
                      }, child:const Text('ScrollableListTabScrollerScreen')),
                ),
              ),













              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(height: 2,color: Colors.green.shade100,),
              ),
              //MobileNumberScreen
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddServicesScreen()));
                      }, child:const Text('meet')),
                ),
              ),



              //GlobalKeyDemo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>GlobalKeyDemo()));
                      }, child:const Text('DEMOPAGE')),
                ),
              ),
              //DemoOfValueKey
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DemoOfValueKey()));
                      }, child:const Text('DemoOfValueKey')),
                ),
              ),





              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(),
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DEmo2()));
                  }, child:const Text('DEMO2')),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DEMO()));
                  }, child:const Text('DEMO')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Demo1()));
                  }, child:const Text('Demo1')),
                ),
              ),


            ],
          ),
        ),
      )
      ,);
  }

}
