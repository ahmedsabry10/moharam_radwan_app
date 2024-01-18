import 'package:get/get.dart';
class ServicesController extends GetxController{
  List <String> names=[
    "services1",
    "services2",
    "services3",
    "services4",
    "services5",
    /*
    "services6".tr,
    "services7".tr,
     */
    "services8",
    "services9",
  ];
  List <String> icons=[
    "assets/services_icons/phone.png",
    "assets/services_icons/web.png",
    "assets/services_icons/optimization.png",
    "assets/services_icons/mobile-shopping.png",
    "assets/services_icons/digital_marketing.png",
    /*
    "assets/services_icons/software_development.png",
    "assets/services_icons/advertising_campaigns.png",
     */
    "assets/services_icons/graphic_design.png",
    "assets/services_icons/production.png",
  ];
  List<String> screensServices=[
    "/mobile_app",
    "/web_page",
    "/engine_optimization",
    "/online_store",
    "/digital_marketing",
    "/graphic_design",
    "/media_production",

  ];








  List <String> distinguishesIcons=[
    "assets/services_icons/api.png",
    "assets/services_icons/dashboard.png",
    "assets/services_icons/tools.png",
  ];
  List <String> distinguishesTitle=[
    "distinguishes_title1",
    "distinguishes_title2",
    "distinguishes_title3",
  ];

  List <String> distinguishesContent=[
    "distinguishes_content1",
    "distinguishes_content2",
    "distinguishes_content3",
  ];


  List <String> maintenanceIcons=[
    "assets/services_icons/dashboard.png",
    "assets/services_icons/tools.png",
  ];
  List <String> maintenanceTitle=[
    "maintenance_title1",
    "maintenance_title2",
  ];

  List <String> maintenanceContent=[
    "maintenance_content1",
    "maintenance_content2",
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



  List <String> webDistinguishesTitle=[
    "ux",
    "dynamic_website",
    "maintenance_title1",
  ];

  List <String> webDistinguishesContent=[
    "web_distinguishes_content1",
    "web_distinguishes_content2",
    "web_distinguishes_content3",
  ];


  List <String> webMaintenanceTitle=[
    "database_integration",
    "improve_site_performance",
  ];

  List <String> webMaintenanceContent=[
    "database_integration_c1",
    "improve_site_performance_c1",
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


  List <String> engOptDistinguishesTitle=[
    "keyword_analysis",
    "linking_security",
    "content_review",
  ];

  List <String> engOptDistinguishesContent=[
    "keyword_analysis_content",
    "linking_security_content",
    "content_review_content",
  ];

  List <String> numOptTitle=[
    "23 +M +",
    "254 +",
    "123 +",
  ];
  List <String> numOptContent=[
    "تم الوصول له",
    "عميل راض",
    "موقع تم تحسينه",
  ];


  List <String> optQuestionsApp=[
    "ما هو تحسين محركات البحث (SEO) ولماذا يعتبر أساسيا لموقعي ؟",
    "كيف يمكن تحسين تصنيف موقعي في محركات البحث ؟",
    "هل يمكنني رؤية نتائج تحسين محركات البحث بشكل سريع ؟",
    "هل تستخدمون تقنيات بيض البحث (Black Hat SEO) ؟",

  ];

  List <String> optAnswersApp=[
    "تحسين محركات البحث هو عملية تحسين موقع الويب لزيادة رؤيته على محركات البحث. يعتبر أساسيًا لأنه يساعد في زيادة حركة المرور وتحسين ترتيب الموقع في نتائج البحث، مما يزيد من فرص الوصول إلى الجمهور المستهدف.",
    "يتضمن تحسين تصنيف الموقع استخدام كلمات رئيسية فعّالة، بناء روابط قوية، تحسين سرعة التحميل، وتقديم محتوى جودة. كما يشمل أيضًا تحسين تجربة المستخدم وتحسين هيكل الموقع.",
    "يعتمد ذلك على العوامل المختلفة، ولكن يتوقع أن تظهر بعض التحسينات في الرؤية خلال بضعة أشهر. تحسين محركات البحث يعتبر عملية تستمر مع مرور الوقت.",
    "لا، نحن نلتزم بممارسات تحسين محركات البحث الأخلاقية ونتجنب أي تقنيات قد تؤدي إلى عقوبات من محركات البحث.",

  ];


  List <String> onlineStoreDistinguishesTitle=[
    "shopping_experience",
    "content_management_system",
    "improve_transaction_security",
  ];

  List <String> onlineStoreDistinguishesContent=[
    "shopping_experience_content",
    "content_management_system_content",
    "improve_transaction_security_content",
  ];


  List <String> onlineStoreNumTitle=[
    "2 +M +",
    "254 +",
    "123 +",
  ];
  List <String> onlineStoreNumContent=[
    "مبيعات كل متجر",
    "عميل راض",
    "متجر الكتروني",
  ];

  List <String> onlineStoreQuestions=[
    "ما هو تطوير متاجر الكترونية ولماذا يعتبر أساسيا لنجاح الأعمال عبر الانترنت ؟",
    "ما هى المميزات الرئيسية لتطوير متجر الكتروني ؟",
    "كيف يمكنني اختيار نظام اداره محتوى (CMS) لمتجري الالكتروني ؟",
    "كيف يمكنني تحسين أمان متجري الالكتروني ؟",


  ];

  List <String> onlineStoreAnswers=[
    "تطوير متاجر الكترونية يشير إلى بناء وتحسين المواقع التجارية عبر الإنترنت لتوفير تجربة تسوق فعّالة. يعتبر أساسياً لنجاح الأعمال عبر الإنترنت حيث يؤثر بشكل كبير على تجربة التسوق ورضاء العملاء.",
    "تشمل المميزات الرئيسية تجربة تسوق سلسة، واجهة مستخدم جذابة، إدارة فعّالة للمخزون، تكامل مع بوابات الدفع، وتحسين لمحركات البحث لزيادة الرؤية.",
    "اختيار نظام إدارة محتوى يعتمد على احتياجاتك. يمكن اعتماد نظم مثل WooCommerce لمستخدمي WordPress أو Magento لتجار الكترونيين بحجم أكبر.",
    " يمكن تحسين الأمان عبر استخدام بروتوكولات آمنة للدفع، وتكامل برامج الحماية من الاختراق، وتحديث منتجات البرمجيات بانتظام، وتوفير طبقات إضافية من التحقق.",
  ];


  List <String> digitalDistinguishesTitle=[
    "com_digital_marketing",
    "data_analysis",
    "unique_strategy",
  ];

  List <String> digitalDistinguishesContent=[
    "com_digital_marketing_content",
    "data_analysis_content",
    "unique_strategy_content",
  ];


  List <String> digitalMaintenanceTitle=[
    "advanced_technology",
    "dedicated_team",
  ];

  List <String> digitalMaintenanceContent=[
    "advanced_technology_content",
    "dedicated_team_content",
  ];

  List <String> digitalNumTitle=[
    "2 M +",
    "254 +",
    "56 +",
  ];
  List <String> digitalNumContent=[
    "اهداف محققة",
    "عميل راض",
    "شركة مستفادة",
  ];


  List <String> questionsDigital=[
    "كيف يمكنني البدء في الاستفادة من خدماتكم ؟",
    "هل تقدمون خدمات تخصيص للاحتياجات الفردية ؟",
    "كيف يمكنني قياس نجاح حملات التسويق الرقمي ؟",
    "هل توفرون خدمات الصيانة والدعم بعد اطلاق التطبيق ؟",

  ];

  List <String> answersDigital=[
    "للبدء في الاستفادة من خدماتنا، يمكنك التواصل معنا عبر صفحة اتصل بنا. سيقوم فريقنا بفهم احتياجاتك وتقديم استشارة مجانية لتحديد كيف يمكننا مساعدتك في تحقيق أهدافك.",
    "نعم، نقدم خدمات تسويقية مُعدة خصيصًا لتلبية احتياجات كل عميل. نحن نفهم أن كل عمل يختلف، ولذلك نهتم بتقديم حلول مخصصة تتناسب مع أهدافك ورؤيتك.",
    "يتم قياس نجاح حملات التسويق الرقمي من خلال مجموعة من المؤشرات مثل معدل التحويل، عدد الزيارات، والتفاعلات على وسائل التواصل الاجتماعي. نستخدم أدوات تحليل البيانات لتقديم تقارير دورية توضح أداء حملاتك.",
    "يتم قياس نجاح حملات التسويق الرقمي من خلال مجموعة من المؤشرات مثل معدل التحويل، عدد الزيارات، والتفاعلات على وسائل التواصل الاجتماعي. نستخدم أدوات تحليل البيانات لتقديم تقارير دورية توضح أداء حملاتك.",
  ];



  List <String> graphicDistinguishesIcons=[
    "assets/services_icons/api.png",
    "assets/services_icons/dashboard.png",
    "assets/services_icons/tools.png",
    "assets/services_icons/api.png",
    "assets/services_icons/dashboard.png",
    "assets/services_icons/tools.png",
  ];
  List <String> graphicDistinguishesTitle=[
    "visual_identity_design",
    "Website_application_design",
    "marketing_materials_design",
    "unique_creativity",
    "elaborate_design",
    "interaction_with_the_customer",


  ];

  List <String> graphicDistinguishesContent=[
    "visual_identity_design_content",
    "Website_application_design_content",
    "marketing_materials_design_content",
    "unique_creativity_content",
    "elaborate_design_content",
    "interaction_with_the_customer_content",
  ];


  List <String> graphicNumTitle=[
    "23 +M +",
    "254 K +",
    "123 +",
  ];
  List <String> graphicNumContent=[
    "تم الوصول له",
    "متابع جديد",
    "مسؤولين عنه",
  ];



  List <String> questionsGraphic=[
    "ما هي خدمات تصميم الجرافيك التي تقدموها ؟",
    "هل يمكنني طلب تصميم مخصص وفقا لاحتياجاتي الفريدة ؟",
    "ما هي التقنيات التي تستخدمونها في تصميم الجرافيك ؟",
    "هل لديكم خبرة في تصميم لمجال صناعي معين ؟",

  ];

  List <String> answersGraphic=[
    "نقدم  خدمات تصميم الجرافيك المتنوعة، بما في ذلك تصميم الشعارات، والهويات البصرية، وتصميم المواقع والتطبيقات، بالإضافة إلى تصميم المواد التسويقية مثل البنرات والبروشورات.",
    "نعم، نحن نقدم خدمات تصميم مخصصة تمامًا وفقًا لاحتياجات ورؤية كل عميل. يمكنك التحدث مع فريقنا لتحديد المتطلبات الخاصة بك وتصميم حلاً فنيًا يلبي توقعاتك.",
    "نحن نستخدم أحدث برامج تصميم الجرافيك وتقنيات التصميم لضمان تقديم تصاميم عالية الجودة. نحرص على متابعة التطورات في عالم التكنولوجيا لضمان تحقيق التصاميم لأعلى مستوى من الاحترافية.",
    "نعم، نمتلك خبرة واسعة في تصميم الجرافيك لمجموعة متنوعة من الصناعات بما في ذلك منتجات عطور معلبات و غيرها . نحن نفهم تحديات كل صناعة ونعمل على تقديم تصاميم تعكس جوهر ومتطلبات كل عميل.",
  ];



  List <String> mediaDistinguishesTitle=[
    "video_production",
    "audio_production",
    "photographic_development",
  ];

  List <String> mediaDistinguishesContent=[
    "video_production_content",
    "audio_production_content",
    "photographic_development_content",
  ];



  List <String> mediaMaintenanceIcons=[
    "assets/services_icons/api.png",
    "assets/services_icons/dashboard.png",
    "assets/services_icons/tools.png",
  ];
  List <String> mediaMaintenanceTitle=[
    "talented_team",
    "advanced_technology",
    "interaction_with_customer",
  ];

  List <String> mediaMaintenanceContent=[
    "talented_team_content",
    "advanced_technology_content",
    "interaction_with_customer_content",
  ];


  List <String> questionsMedia=[
    "كيف يمكنني البدء في مشروع انتاج اعلامي معكم ؟",
    "هل لديكم أمثلة سابقة علي أعمال الانتاج الاعلامي التي قمتم بها ؟",
    "كيف يمكنني معرفة التكلفة المقدرة لمشروع انتاج اعلامي ؟",
    "هل يمكنني طلب خدمة انتاج مخصصة لاحتياجات مشروعي الفريدة ؟",

  ];

  List <String> answersMedia=[
    "للبدء في مشروع إنتاج إعلامي، يمكنك التواصل معنا عبر صفحة اتصل بنا. سنقوم بالتفاعل معك، وفهم احتياجاتك، وبناء خطة عمل لتحقيق رؤيتك الإعلامية.",
    "نعم، يمكنك مشاهدة أمثلة على أعمالنا السابقة في قسم الأعمال على موقعنا. نفخر بمشاركة نماذج من مشاريعنا الناجحة لإظهار مدى تنوع وجودة أعمالنا.",
    "يمكنك الحصول على تقدير تكلفة مشروعك عن طريق الاتصال بنا أو ملء استمارة الاستفسار على موقعنا. سنقوم بتقديم تقدير دقيق استنادًا إلى متطلبات مشروعك.",
    "نعم، نحن نقدم خدمات إنتاج مخصصة تمامًا لتلبية احتياجات مشاريعك بشكل دقيق. اتصل بنا لمناقشة متطلبات مشروعك ونحن نقدم لك حلاً مخصصًا.",
  ];


  List <String> clientNames=[
    "كريم محمد",
    "مسعود ماهر",
    "إيمان خليل",
  ];
  List <String> clientOpinions=[
    'تعاون رائع وتفاعل سريع . لقد أحببنا تحسينات التصميم التي قدمها محرم رضوان',
    "فريق محترف ومتفانِِ في تقديم الخدمات التقنية , لا يمكننا سوي التأكيد على جودة العمل ",
    "تجربة تعامل رائعة , فريق يفهم تماماََ كيفية تحسين تجربة المستخدم",

  ];

}