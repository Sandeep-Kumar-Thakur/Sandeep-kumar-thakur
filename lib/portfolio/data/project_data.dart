class Project {
  final String title;
  final String? webUrl;
  final String? playStoreUrl;
  final String? appStoreUrl;
  final String? imageUrl;
  final String description;
  final List<String> techStack;

  Project({
    required this.title,
    required this.description,
    required this.techStack,
    this.webUrl,
    this.playStoreUrl,
    this.appStoreUrl,
    this.imageUrl,
  });
}

final List<Project> projectList = [
  Project(
    title: "VendClub",
    webUrl: 'https://www.vendclub.com/',
    appStoreUrl: 'https://apps.apple.com/us/app/vendclub/id6670476123',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.vendclub.vendclub',
    imageUrl: 'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/f4/99/7d/f4997da6-5352-401a-899a-f642e0c8d0a6/AppIcon-0-0-1x_U007emarketing-0-11-0-0-85-220.png/230x0w.webp',
    description: """Vendclub is the smart, modern platform where merchants and vendors connect...""",
    techStack: [
      'Flutter',
      'GETX',
      'STRIPE',
      'Firebase',
      'FCM-Notification',
      'Branch.io',
      'Socket.io',
    ],
  ),
  Project(
    title: "Hive - Personal Safety App",
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.app.hive.safety&hl=en_IN',
    appStoreUrl: 'https://apps.apple.com/us/app/hive-personal-safety-app/id6737192311',
    imageUrl: 'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/85/03/f0/8503f032-f69c-02de-094c-c22671cd10d8/AppIcon-0-0-1x_U007ephone-0-1-85-220.png/230x0w.webp',
    description: """Hive is a personal safety app that allows you to...""",
    techStack: [
      'Flutter',
      'GETX',
      'InApp-Purchases',
      'FirebaseFirestore (BACKEND)',
      'FCM-Notification',
      'Google.Ads',
      'Google Maps',
      'Agora',
      "Call-Kit",
      "Custom-Dynamic Linking",
      "Firebase Function",
      "Floating Action Button (OUTSIDE OF APP - Achieve with native bridging)",
    ],
  ),
  Project(
    title: "Pick A Side: Polls & Debates",
    appStoreUrl: 'https://apps.apple.com/us/app/pick-a-side-polls-debates/id6740555734',
    imageUrl: 'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/30/09/a3/3009a3a4-73a9-b999-0f56-de902766f271/AppIcon-0-0-1x_U007emarketing-0-11-0-85-220.png/217x0w.webp',
    description: """Pick A Side is a fun, addictive app where you vote on daily polls...""",
    techStack: [
      'Flutter',
      'GETX',
      'InApp-Purchases',
      'FCM-Notification',
    ],
  ),
  Project(
    title: "Lynnette's Kitchen",
    imageUrl: 'https://www.lynnetteskitchenapp.com/static/media/logo.1389d8e7c7347b608f32744f43821e41.svg',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.lynnette.kitchen&hl=en_IN',
    description: """Welcome to Lynnette's Kitchen App, where everyone can easily learn to cook...""",
    techStack: [
      'Flutter',
      'BLOC',
      'InApp-Purchases',
      'OneSignal',
      'AGORA',
    ],
  ),
  Project(
    title: "Variablegrid",
    appStoreUrl: 'https://apps.apple.com/id/app/variablegrid/id6670303384',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.varian.varian&hl=en_IN',
    imageUrl: 'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/27/e6/c8/27e6c84c-b4f0-2091-c525-0fb1f4a95cea/AppIcon-0-0-1x_U007epad-0-1-0-85-220.png/230x0w.webp',
    description: """Closed user group application for existing customers of Variablegrid...""",
    techStack: [
      'Flutter',
      'BLOC',
      'SOCKET.io',
    ],
  ),
  Project(
    title: "Web School Manager",
    appStoreUrl: 'https://apps.apple.com/in/app/web-school-manager/id1361926412',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.AkaalWebSoft.WebSchoolManager&hl=en_IN',
    imageUrl: 'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/a7/c0/36/a7c0369f-6a92-5a75-cf6d-c8b41e3dda8c/AppIcon-0-0-1x_U007emarketing-0-8-0-85-220.png/230x0w.webp',
    description: """Web School Manager is engineered keeping in mind every single requirement...""",
    techStack: [
      'Flutter',
      'GETx',
      'SOCKET.io',
      'Google Map',
      'FirebaseFirestore',
    ],
  ),
];