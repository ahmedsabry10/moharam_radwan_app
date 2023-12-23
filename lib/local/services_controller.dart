import 'package:get/get.dart';

class ServicesController extends GetxController{
  List <String> names=[
    "services1".tr,
    "services2".tr,
    "services3".tr,
    "services4".tr,
    "services5".tr,
    "services6".tr,
    "services7".tr,
    "services8".tr,
    "services9".tr,
  ];
  List <String> icons=[
    "assets/services_icons/phone.png",
    "assets/services_icons/web.png",
    "assets/services_icons/optimization.png",
    "assets/services_icons/mobile-shopping.png",
    "assets/services_icons/digital_marketing.png",
    "assets/services_icons/software_development.png",
    "assets/services_icons/advertising_campaigns.png",
    "assets/services_icons/graphic_design.png",
    "assets/services_icons/production.png",
  ];


  List <String> distinguishesIcons=[
    "assets/services_icons/api.png",
    "assets/services_icons/dashboard.png",
    "assets/services_icons/tools.png",
  ];
  List <String> distinguishesTitle=[
    "distinguishes_title1".tr,
    "distinguishes_title2".tr,
    "distinguishes_title3".tr,
  ];

  List <String> distinguishesContent=[
    "distinguishes_content1".tr,
    "distinguishes_content2".tr,
    "distinguishes_content3".tr,
  ];


  List <String> maintenanceIcons=[
    "assets/services_icons/dashboard.png",
    "assets/services_icons/tools.png",
  ];
  List <String> maintenanceTitle=[
    "maintenance_title1".tr,
    "maintenance_title2".tr,
  ];

  List <String> maintenanceContent=[
    "maintenance_content1".tr,
    "maintenance_content2".tr,
  ];


  List <String> numTitle=[
    "2 M +",
    "254 +",
    "165 +",
  ];
  List <String> numContent=[
    "تحميلات",
    "عميل راض",
    "تطبيق مصمم",
  ];



  List <String> numWebTitle=[
    "2,300 +",
    "254 +",
    "459 +",
  ];
  List <String> numWebContent=[
    "تصميمات جاهزة",
    "عميل راض",
    "موقع مطور",
  ];

  List <String> questionsApp=[
    "هل يمكنك  تصميم تطبيق يلبي احتياجات فريدة لشركتي ؟",
    "كيف تضمنون تجربة مستخدم مرضية ؟",
    "هل تدعمون تطوير تطبيقات لنظامي iosو Android ؟",
    "هل توفرون خدمات الصيانة والدعم بعد اطلاق التطبيق ؟",
  ];

  List <String> answersApp=[
    "نعم، نحن نقدم خدمات تصميم مخصصة تأخذ في اعتبارها احتياجاتك الفريدة وتطلعاتك، مما يضمن تميز تطبيقك في السوق.",
    "نركز على تصميم وتطوير واجهات مستخدم (UI) وتجارب مستخدم (UX) متفوقة، ونختبر التطبيق بشكل دوري لضمان سهولة الاستخدام والتفاعل الجيد.",
    "نعم، نحن متخصصون في تطوير تطبيقات لنظامي التشغيل iOS و Android لضمان توفر التطبيق لأكبر عدد من المستخدمين.",
    "نعم، نقدم خدمات الصيانة المستمرة، بما في ذلك تحديثات الأمان والتحسينات المستمرة، ونقدم دعمًا فنيًا للتعامل مع أي مشاكل قد تطرأ.",
  ];


  List <String> webDistinguishesIcons=[
    "assets/services_icons/api.png",
    "assets/services_icons/dashboard.png",
    "assets/services_icons/tools.png",
  ];
  List <String> webDistinguishesTitle=[
    "ux".tr,
    "dynamic_website".tr,
    "maintenance_title1".tr,
  ];

  List <String> webDistinguishesContent=[
    "web_distinguishes_content1".tr,
    "web_distinguishes_content2".tr,
    "web_distinguishes_content3".tr,
  ];


  List <String> webMaintenanceTitle=[
    "database_integration".tr,
    "improve_site_performance".tr,
  ];

  List <String> webMaintenanceContent=[
    "database_integration_c1".tr,
    "improve_site_performance_c1".tr,
  ];


  List <String> webQuestionsApp=[
    "هل يمكنك تصميم موقع ويب يتناسب مع احتياجات شركتى أو مشروعى بشكل فريد ؟",
    "كيف يمكن للموقع ان يكون متوافقا مع مختلف أحجام الشاشات ؟",
    "هل تقدمون خدمات تطوير المواقع لأنظمة الأدارة مثل WordPress ؟",
    "هل يمكنني تكامل موقعي مع وسائل التواصل الأجتماعي ؟",
    "هل تقدمون خدمات تحسين محركات البحث(SEO) موقع الويب ؟",
    "هل يمكنني ادارة المحتوى علي موقعي بنفسي ؟",

  ];

  List <String> webAnswersApp=[
    "نعم، نحن نقدم خدمات تصميم وتطوير مواقع مخصصة لتلبية احتياجات عملائنا بشكل فريد، مع التركيز على تحقيق أهدافهم الفريدة.",
    "نستخدم تقنيات تصميم متجاوب (Responsive Design) لضمان أن الموقع يظهر بشكل جيد ويعمل بكفاءة على مختلف أحجام وأنواع الشاشات.",
    "نعم، نحن خبراء في تطوير مواقع WordPress ومنصات إدارة المحتوى الأخرى، مما يمنح عملائنا سهولة في إدارة وتحديث محتوى مواقعهم.",
    "نعم، نقوم بتكامل مواقع الويب مع وسائل التواصل الاجتماعي لتعزيز التفاعل وزيادة الوعي بالعلامة التجارية.",
    "نعم، نقدم خدمات SEO لتحسين رؤية موقعك على محركات البحث وزيادة حركة المرور المستهدفة.",
    "نعم، نقوم بتوفير نظم إدارة المحتوى (CMS) التي تجعل من السهل على العملاء إدارة وتحديث المحتوى بشكل مستقل.",
  ];

}