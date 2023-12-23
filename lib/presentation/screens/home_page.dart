import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconly/iconly.dart';
import 'package:moharam_radwan/config/theme/app_colors.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/contact_us_screen.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/our_service.dart';
import 'package:moharam_radwan/presentation/screens/drawer_screens/who_are_we.dart';
import 'package:moharam_radwan/presentation/screens/services_screens/mobile_app.dart';
import 'package:moharam_radwan/presentation/widget/item_widget.dart';
import 'package:moharam_radwan/presentation/widget/opinion_widget.dart';
import 'package:moharam_radwan/presentation/widget/package_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../config/shared/fixed_grid.dart';
import '../../local/local_controller.dart';
import '../../main.dart';
import '../widget/carousel_item.dart';
import 'package:video_player/video_player.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _advancedDrawerController = AdvancedDrawerController();
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://moharamradwan.com/wp-content/uploads/2023/12/WhatsApp-Video-2023-08-28-at-11.33.47-AM.mp4'
    )
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  List<String> workImage=[
    "https://moharamradwan.com/wp-content/uploads/2023/12/cIO9ZrINnM2DXDagztJXidTaNfwQDBqn9V9jgH6f1BU_plaintext_638375559552919606-1536x1384.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/IMG-20231207-WA0033.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/IMG-20231207-WA0027.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/IMG-20231207-WA0033.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/oVGexadedQO03NwgH_xYv7TVnZUpyBHIDoDK6ygkUOo_plaintext_638375559030015018.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/WhatsApp-Image-2023-12-07-at-15.33.22_8188fccf-1536x1536.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/0PJjjvGezjhmfZB0-iVzL87yNXbzeJEMS9KIfgeHtpc_plaintext_638375560823924016.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/CbcVolCtdIDPjQG_gBb1onm22Qh1ItvX5ajICxoE62k_plaintext_638375560417351579-1536x1536.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/GLoRp42rrOWM_GiqCLRFyzCRullD2EEEt1q-wteu1Jk_plaintext_638375560959036873.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/ti3wqeL_uCUZbaHiQXtCmu2lvdpFQc0JtUL0hXRAy54_plaintext_638375562140791865-1536x1536.jpg",
    "https://moharamradwan.com/wp-content/uploads/2023/12/nGQ63cRu0qyzFI-kHHfzobhAzxtB64dw0E_8m1O3m_U_plaintext_638375561260253137-1536x1536.jpg",
  ];


  void _launcherUrl(int value) async {

    String url = "";
    if (value == 1) {
      ///whatsapp
      url = "https://wa.me/+971588421241";
    } else if (value == 2) {
      ///facebook
      url = "https://www.facebook.com/MoharamRadwan.Ads";
    } else if (value == 3) {
      ///tiktok
      url = "https://www.tiktok.com/@moharam.radwan";
    } else if (value == 4) {
      ///gmail
      url = "mailto:moharamabdelsabour1@gmail.com";
    }
    else if (value == 5) {
      ///instagram
      url = "https://www.instagram.com/moharam.radwan.ae/";
    }
    final Uri uri = Uri.parse(url);
    if (await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "can\,t launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerLang=Get.find();



    return AdvancedDrawer(
      backdropColor: HexColor('#7B241C'),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Spacer(),

                  Image.asset("assets/images/white_logo.png",
                    height: 200,
                    width: double.infinity,
                    color:HexColor('#ECF0F1'),
                  ),


                  ListTile(
                    onTap: () {
                      Get.to(()=>WhoAreWe());
                    },
                    leading: const Icon(
                      IconlyBold.profile,
                    ),
                    title: Text(
                      "who_are_we".tr,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  ListTile(
                    onTap: () {
                      Get.to(()=>OurServices());
                    },
                    leading: const Icon(
                      IconlyBold.chart,
                    ),
                    title: Text(
                      "our_services".tr,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //const SizedBox(height: 16),



                  ///language
                  ListTile(
                    onTap: () {
                      sharedPref!.getString("lang")=='ar' ? controllerLang.changeLang('en')
                          :  controllerLang.changeLang('ar');
                    },
                    leading: const Icon(
                      Icons.translate_rounded,
                    ),
                    title: Text(
                      'language'.tr,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  ///About us

                  ListTile(
                    onTap: () {
                      Get.to(()=>ContactUsScreen());
                    },
                    leading: const Icon(
                      IconlyBold.message,
                    ),
                    title: Text(
                      'contact_us'.tr,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),




                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
      child:  Scaffold(

          appBar: AppBar(
            title: Text(
                "1".tr
            ),
            centerTitle: false,
            actions: [

              Image.asset("assets/images/white_logo.png",
              color:HexColor('#ECF0F1'),
              )
            ],
            leading: IconButton(
              onPressed: _handleMenuButtonPressed,
              icon: ValueListenableBuilder<AdvancedDrawerValue>(
                valueListenable: _advancedDrawerController,
                builder: (_, value, __) {
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    child: Icon(
                      value.visible
                          ? IconlyBroken.close_square
                          : IconlyBroken.more_square,
                      key: ValueKey<bool>(value.visible),
                    ),
                  );
                },
              ),
            ),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [


                ClipRect(
                  child: Image.asset(
                    'assets/images/home1.jpeg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                ),

                SizedBox(
                  height: 30.0,
                ),



                ///content 1
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "what_we_offer".tr,
                        style: TextStyle(
                          color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "content1".tr,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),
                      ),
                    ],
                  ),
                ),
                ///grid
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 2,
                      height: 300,
                      crossAxisCount: 2,
                    ),
                    itemBuilder:  (_, index) {
                      return ItemWidget(
                        imageUrl:
                        "https://moharamradwan.com/wp-content/uploads/2023/12/IMG-20231205-WA0006-540x540.jpg",
                      );
                    },
                    itemCount: 6,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ///content 2
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "client".tr,
                        style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "content2".tr,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),
                      ),
                    ],
                  ),
                ),

                ///carousel_slider
                CarouselSlider.builder(

                  options: CarouselOptions(
                    height: 155,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(milliseconds: 500),
                    autoPlayCurve: Curves.easeInCubic,
                    viewportFraction: (MediaQuery.of(context).size.width > 1200) ? 0.1 :(MediaQuery.of(context).size.width > 850) ? 0.2: 0.3,

                  ),
                  itemBuilder: (BuildContext context, int index, int realIndex) {
                  return OurWorkItem(
                    imageUrl: workImage[index],
                  );
                }, itemCount: 3,
                ),
                SizedBox(
                  height: 30.0,
                ),

                ///content 2
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "who_are_we".tr,
                        style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "content3".tr,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),
                      ),

                      SizedBox(
                        height: 20.0,
                      ),

                      ///first slider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Text(
                              "wordpress".tr,
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),
                            Spacer(),
                            Text(
                              '90%',
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),
                          ],
                        ),
                      ),
                      SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Colors.transparent,
                      overlayColor: Colors.transparent,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                    ),
                    child: Slider(
                      value: 90,
                      min: 0,
                      max: 100,
                      activeColor: AppColors.primary,
                      inactiveColor: Colors.grey[200],
                      onChanged: (newValue) {

                      },
                    ),
                  ),

                      ///second slider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Text(
                              "graphic".tr,
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),
                            Spacer(),
                            Text(
                              '95%',
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),
                          ],
                        ),
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Colors.transparent,
                          overlayColor: Colors.transparent,
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                        ),
                        child: Slider(
                          value: 95,
                          min: 0,
                          max: 100,
                          activeColor: AppColors.primary,
                          inactiveColor: Colors.grey[200],
                          onChanged: (newValue) {

                          },
                        ),
                      ),

                      ///3 slider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Text(
                              "marketing".tr,
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),
                            Spacer(),
                            Text(
                              '98%',
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),
                          ],
                        ),
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Colors.transparent,
                          overlayColor: Colors.transparent,
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                        ),
                        child: Slider(
                          value: 98,
                          min: 0,
                          max: 100,
                          activeColor: AppColors.primary,
                          inactiveColor: Colors.grey[200],
                          onChanged: (newValue) {

                          },
                        ),
                      ),

                      SizedBox(
                        height: 20.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.primary,
                                  width: 5.0
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Center(
                              child: _controller!.value.isInitialized
                                  ? AspectRatio(
                                aspectRatio: _controller!.value.aspectRatio,
                                child: VideoPlayer(_controller!),
                              )
                                  : CircularProgressIndicator(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: FloatingActionButton(
                              backgroundColor: AppColors.primary,
                              onPressed: () {
                                setState(() {
                                  _controller!.value.isPlaying
                                      ? _controller!.pause()
                                      : _controller!.play();
                                });
                              },
                              child: Icon(
                                _controller!.value.isPlaying ? Icons.pause : Icons.play_arrow,
                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),



                      ///best shows
                      Text(
                        "best_offers".tr,
                        style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "content4".tr,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),
                      ),

                      SizedBox(
                        height: 20.0,
                      ),
                      /// package grid
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                          mainAxisSpacing: 4.0,
                          crossAxisSpacing: 2,
                          height: 250,
                          crossAxisCount: 2,
                        ),
                        itemBuilder:  (_, index) {
                          return PackageWidget();
                        },
                        itemCount: 4,
                      ),

                      SizedBox(
                        height: 30.0,
                      ),


                      Text(
                        "opinions".tr,
                        style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "content2".tr,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),

                      CarouselSlider.builder(

                        options: CarouselOptions(
                          height: 200,
                          enlargeCenterPage: false,
                          autoPlay: true,
                          aspectRatio: 15 / 14,
                          autoPlayCurve: Curves.linear,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                          const Duration(milliseconds: 500),
                          viewportFraction: 1.00,
                        ),
                        itemBuilder: (BuildContext context, int index, int realIndex) {
                        return OpinionsWidget();
                      }, itemCount: 3,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),

                      Image.asset("assets/images/white_logo.png",
                        color:AppColors.primary,
                        height: 150,
                        width: double.infinity,

                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "content5".tr,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),
                      ),

                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "subscribe".tr,
                        style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "content6".tr,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          children: [
                            Expanded(
                               child: InkWell(
                             onTap: (){
                               _launcherUrl(2);
                             },
                             child:Image.asset("assets/icons/facebook.png",
                             color: Colors.blue[900],
                             height: 50,
                               width: 50.0,
                             ),
                           )),

                            Expanded(
                                child: InkWell(
                                  onTap: (){
                                    _launcherUrl(3);
                                  },
                                  child:Image.asset("assets/icons/tikTok.png",
                                    height: 50,
                                    width: 50.0,
                                  ),
                                )),
                            Expanded(

                                child: InkWell(
                                  onTap: (){
                                    _launcherUrl(5);
                                  },
                                  child:Image.asset("assets/icons/instagram2.png",
                                    height: 50,
                                    width: 50.0,
                                  ),
                                )),
                            Expanded(
                                child: InkWell(
                                  onTap: (){
                                    _launcherUrl(1);
                                  },
                                  child:Image.asset("assets/icons/whatsapp2.png",
                                    height: 50,
                                    width: 50.0,
                                  ),
                                )),
                          ],
                        ),


                      ),

                    ],
                  ),
                ),



              ],
            ),
          )
      ),
    );




    /*
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "1".tr
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                onPressed: (){
                  controllerLang.changeLang("ar");
                },
                child: Container(
                  color: Colors.red,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                          '2'.tr
                      ),
                    ),
                  ),
                )),

            SizedBox(
              height: 10.0,
            ),
            MaterialButton(
                onPressed: (){
                  controllerLang.changeLang("en");
                },
                child: Container(
                  color: Colors.red,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                          '3'.tr
                      ),
                    ),
                  ),
                )),

          ],
        ),
      )
    );

     */


  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}
