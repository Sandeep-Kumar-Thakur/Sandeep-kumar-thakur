import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandeep/portfolio/widget/about.dart';
import 'package:sandeep/portfolio/widget/module.dart';
import 'package:sandeep/portfolio/widget/project_overview.dart';

import '../generated/assets.dart';
import '../main.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final List<Item> techStack = [
    Item(
      name: 'Flutter',
      logoUrl: 'https://img.icons8.com/color/48/flutter.png',
    ),
    Item(name: 'Dart', logoUrl: 'https://img.icons8.com/color/48/dart.png'),
    Item(
      name: 'Firebase Functions',
      logoUrl: 'https://img.icons8.com/color/48/firebase.png',
    ),
    Item(
      name: 'Node.js',
      logoUrl: 'https://img.icons8.com/color/48/nodejs.png',
    ),
    Item(name: 'HTML', logoUrl: 'https://img.icons8.com/color/48/html-5.png'),
    Item(name: 'CSS', logoUrl: 'https://img.icons8.com/color/48/css3.png'),
    Item(
      name: 'Java',
      logoUrl: 'https://img.icons8.com/color/48/java-coffee-cup-logo.png',
    ),
    Item(name: 'Kotlin', logoUrl: 'https://img.icons8.com/color/48/kotlin.png'),
    Item(name: 'Swift', logoUrl: 'https://img.icons8.com/color/48/swift.png'),
  ];

  final List<Item> stateManagementTools = [
    Item(
      name: 'GetX',
      logoUrl:
          'https://raw.githubusercontent.com/jonataslaw/getx-community/master/get.png',
    ),
    Item(
      name: 'Provider',
      logoUrl:
          'https://raw.githubusercontent.com/rrousselGit/provider/master/resources/logo.png',
    ),
    Item(name: 'Riverpod', logoUrl: 'https://riverpod.dev/assets/logo.svg'),
    Item(
      name: 'Bloc',
      logoUrl: 'https://bloclibrary.dev/assets/images/logo.svg',
    ),
    Item(
      name: 'MobX',
      logoUrl: 'https://mobx.netlify.app/assets/mobx-logo.png',
    ),
    Item(
      name: 'Redux',
      logoUrl:
          'https://raw.githubusercontent.com/reduxjs/redux/master/logo/logo.png',
    ),
  ];

  final List<Item> database = [
    Item(
      name: 'Firebase Auth',
      logoUrl: 'https://img.icons8.com/color/48/firebase.png',
    ),
    Item(
      name: 'Firebase Firestore',
      logoUrl: 'https://img.icons8.com/color/48/firebase.png',
    ),
    Item(
      name: 'Firebase Cloud Messaging (FCM)',
      logoUrl: 'https://img.icons8.com/color/48/firebase.png',
    ),
    Item(
      name: 'Firebase Storage',
      logoUrl: 'https://img.icons8.com/color/48/firebase.png',
    ),
    Item(
      name: 'Supabase',
      logoUrl: 'https://supabase.com/icons/icon-192x192.png',
    ),
    Item(
      name: 'Airtable',
      logoUrl: 'https://cdn.worldvectorlogo.com/logos/airtable-1.svg',
    ),
    Item(
      name: 'SQLite',
      logoUrl:
          'https://upload.wikimedia.org/wikipedia/commons/3/38/SQLite370.svg',
    ),
    Item(
      name: 'Hive',
      logoUrl:
          'https://raw.githubusercontent.com/hivedb/hive/master/images/logo.png',
    ),
    Item(
      name: 'Moor (Drift)',
      logoUrl: 'https://drift.simonbinder.eu/assets/drift-logo.png',
    ),
    Item(
      name: 'REST APIs',
      logoUrl:
          'https://img.icons8.com/external-flat-juicy-fish/60/external-api-coding-and-development-flat-flat-juicy-fish.png',
    ),
    Item(
      name: 'GraphQL',
      logoUrl:
          'https://upload.wikimedia.org/wikipedia/commons/1/17/GraphQL_Logo.svg',
    ),
    Item(
      name: 'Socket.IO',
      logoUrl:
          'https://upload.wikimedia.org/wikipedia/commons/9/96/Socket-io.svg',
    ),
    Item(
      name: 'WebRTC',
      logoUrl:
          'https://upload.wikimedia.org/wikipedia/commons/d/d2/WebRTC_Logo_2011.svg',
    ),
  ];

  final List<Item> cloudHosting = [
    Item(
      name: 'Firebase',
      logoUrl: 'https://img.icons8.com/color/48/firebase.png',
    ),
    Item(
      name: 'Supabase',
      logoUrl: 'https://supabase.com/icons/icon-192x192.png',
    ),
    Item(
      name: 'Vercel',
      logoUrl:
          'https://assets.vercel.com/image/upload/v1669991571/front/favicon/vercel/favicon.ico',
    ),
    Item(
      name: 'Netlify',
      logoUrl: 'https://www.netlify.com/v3/img/components/logomark.png',
    ),
    Item(
      name: 'Heroku',
      logoUrl:
          'https://brand.heroku.com/static/media/heroku-logotype-vertical.f7f943ba.svg',
    ),
  ];

  final List<Item> devTools = [
    Item(
      name: 'Git',
      logoUrl: 'https://git-scm.com/images/logos/downloads/Git-Icon-1788C.png',
    ),
    Item(
      name: 'GitHub Actions',
      logoUrl:
          'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png',
    ),
    Item(
      name: 'Bitbucket Pipelines',
      logoUrl:
          'https://wac-cdn.atlassian.com/dam/jcr:24e04c2d-b6f3-40cc-8d7b-1f88db1c2d6d/Bitbucket_128.png',
    ),
    Item(
      name: 'Codemagic',
      logoUrl:
          'https://raw.githubusercontent.com/codemagic-ci-cd/marketing/master/assets/img/icons/icon-512x512.png',
    ),
    Item(
      name: 'Fastlane',
      logoUrl: 'https://fastlane.tools/assets/img/fastlane_icon.png',
    ),
    Item(
      name: 'App Distribution',
      logoUrl:
          'https://img.icons8.com/external-flat-icons-inmotus-design/67/external-mobile-marketing-mobile-app-development-flat-icons-inmotus-design.png',
    ),
    Item(
      name: 'VSCode',
      logoUrl: 'https://code.visualstudio.com/assets/images/code-stable.png',
    ),
    Item(
      name: 'Android Studio',
      logoUrl:
          'https://developer.android.com/static/studio/images/new-studio-logo-1_1920.png',
    ),
    Item(
      name: 'Xcode',
      logoUrl:
          'https://developer.apple.com/assets/elements/icons/xcode/xcode-128x128_2x.png',
    ),
    Item(
      name: 'Cursor',
      logoUrl: 'https://avatars.githubusercontent.com/u/120516013?s=200&v=4',
    ),
  ];

  final List<Item> sdks = [
    Item(
      name: 'Google Maps',
      logoUrl:
          'https://upload.wikimedia.org/wikipedia/commons/9/99/Google_Maps_Logo_2020.svg',
    ),
    Item(
      name: 'Stripe',
      logoUrl:
          'https://upload.wikimedia.org/wikipedia/commons/0/01/Stripe_Logo%2C_revised_2016.svg',
    ),
    Item(
      name: 'Razorpay',
      logoUrl: 'https://avatars.githubusercontent.com/u/7713208?s=200&v=4',
    ),
    Item(
      name: 'Paytm',
      logoUrl:
          'https://upload.wikimedia.org/wikipedia/commons/5/55/Paytm_logo.png',
    ),
    Item(
      name: 'Bluetooth',
      logoUrl:
          'https://upload.wikimedia.org/wikipedia/commons/8/8c/Bluetooth.svg',
    ),
    Item(
      name: 'BLE (Bluetooth Low Energy)',
      logoUrl:
          'https://upload.wikimedia.org/wikipedia/commons/f/fb/Bluetooth_Low_Energy_logo.svg',
    ),
    Item(
      name: 'Printer SDKs',
      logoUrl: 'https://img.icons8.com/ios-filled/50/000000/printer.png',
    ),
    Item(
      name: 'Video SDK',
      logoUrl:
          'https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/external-video-communication-flaticons-lineal-color-flat-icons.png',
    ),
    Item(
      name: 'Agora',
      logoUrl:
          'https://www.agora.io/en/wp-content/uploads/2021/07/agora-blue.png',
    ),
    Item(
      name: 'Jitsi Meet',
      logoUrl: 'https://avatars.githubusercontent.com/u/1479272?s=200&v=4',
    ),
    Item(
      name: 'QR/Barcode Scanner',
      logoUrl: 'https://img.icons8.com/ios-filled/50/000000/qr-code.png',
    ),
    Item(
      name: 'Deep Linking',
      logoUrl: 'https://img.icons8.com/fluency/48/link.png',
    ),
    Item(
      name: 'Dynamic Links',
      logoUrl:
          'https://firebase.google.com/images/products/dynamic-links/logo.svg',
    ),
    Item(
      name: 'In-App Updates',
      logoUrl: 'https://img.icons8.com/fluency/48/update-left-rotation.png',
    ),
    Item(
      name: 'Push Notifications',
      logoUrl: 'https://img.icons8.com/color/48/appointment-reminders--v1.png',
    ),
    Item(
      name: 'Local Auth',
      logoUrl: 'https://img.icons8.com/ios-filled/50/fingerprint.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF01579b),
      extendBodyBehindAppBar: true,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.black,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(Assets.iconsFlutter, height: 80),
            ),
            floating: true,
            snap: true,
            elevation: 10,
          ),
        ],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              About(),
              const SizedBox(height: 20),
              Module(
                title: 'TECH STACK & TOOLS',
                description: 'Frameworks & Platforms',
                items: techStack,
              ),
              Module(
                description: 'State Management',
                items: stateManagementTools,
              ),
              Module(description: 'Backend & Databases', items: database),
              Module(description: 'Cloud & Hosting', items: cloudHosting),
              Module(description: 'Dev Tools & Services', items: devTools),
              Module(description: "SDK's", items: sdks),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'RECENT PROJECTS',
                  style: TextStyle(fontSize: 30),
                ),
              ),

              ProjectOverviewWidget(
                webUrl: 'https://www.vendclub.com/',
                appStoreUrl:
                    'https://apps.apple.com/us/app/vendclub/id6670476123',
                imageUrl:
                    'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/f4/99/7d/f4997da6-5352-401a-899a-f642e0c8d0a6/AppIcon-0-0-1x_U007emarketing-0-11-0-0-85-220.png/230x0w.webp',
                title: "VendClub",
                description:
                    """Vendclub is the smart, modern platform where merchants and vendors connect, collaborate, and close deals through intuitive matchmaking and seamless communication tools.

Designed to eliminate the friction in product discovery and vendor outreach, VendClub empowers both sides of the wholesale ecosystem with powerful features built for speed, clarity, and growth.


For Merchants:

VendClub helps buyers—whether large retailers or boutique shop owners—quickly discover products that match their criteria, without the clutter or outdated sourcing methods.

Smart Showroom Matching: Merchants are matched with vendors based on product categories, tags, and retail relevance. Products are delivered in clean, swipeable galleries with the option to view in Grid mode for efficient browsing.

Private Showrooms: Invite-only spaces where selected vendors can submit products for review. This creates focused, brand-aligned interactions and eliminates the noise of irrelevant pitches.

Seamless Swipe Actions: With a simple swipe, merchants can request pricing, samples, meetings, or vendor onboarding—or swipe left to discard. Each action generates a clear update for the vendor, so nothing gets lost.

Revealed Merchants: Merchants can choose to reveal their identity to vendors for more personalized outreach, or stay anonymous until they’re ready to engage.

Request Management: All activity is tracked and sortable by action type—pricing, samples, meetings, emails, and onboarded vendors—so nothing falls through the cracks.


For Vendors:

VendClub streamlines outreach and showcases your catalog in the best light possible—whether you're targeting niche boutiques or national chains.

Public & Private Showroom Uploads: Post your full catalog into open showrooms that match your brand, or respond to exclusive invites to private merchant spaces.

Instant Engagement Feedback: Vendors are notified when a merchant takes an action—pricing request, sample request, or meeting. You always know who’s interested and what to follow up on.

Profile-Driven Matching: Your vendor profile and product details help power the matching engine. The more complete your profile, the more relevant the exposure.

Chat Integration: Built-in messaging ensures you can respond to inquiries in real-time or at your convenience—no third-party apps needed.""",
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
              ProjectOverviewWidget(
                playStoreUrl:
                    'https://play.google.com/store/apps/details?id=com.app.hive.safety&hl=en_IN',
                appStoreUrl:
                    'https://apps.apple.com/us/app/hive-personal-safety-app/id6737192311',
                imageUrl:
                    'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/85/03/f0/8503f032-f69c-02de-094c-c22671cd10d8/AppIcon-0-0-1x_U007ephone-0-1-85-220.png/230x0w.webp',
                title: "Hive - Personal Safety App",
                description:
                    """Hive is a personal safety app that allows you to:

1. Share your location with members of your group/hive.

2. Alert those members if you feel unsafe.

3. Contact one of the members while your alert is active.

The above features are available for free, but there are a few extras available for Premium subscribers -""",
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
              ProjectOverviewWidget(
                appStoreUrl:
                    'https://apps.apple.com/us/app/pick-a-side-polls-debates/id6740555734',
                imageUrl:
                    'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/30/09/a3/3009a3a4-73a9-b999-0f56-de902766f271/AppIcon-0-0-1x_U007emarketing-0-11-0-85-220.png/217x0w.webp',
                title: "Pick A Side: Polls & Debates",
                description:
                    """Pick A Side is a fun, addictive app where you vote on daily polls, challenge opinions, and see where you stand in the crowd. From hilarious “Would You Rather” dilemmas to hot takes on social trends, it’s your daily dose of opinion battles and fun debates.




Key Features:

1. Vote on daily “This or That” questions

2. Fun, thought-provoking polls

3. Compare your opinions with others

4. Climb the leaderboard by earning points

5. Daily notifications to never miss a debate

6. Anonymous voting – your voice stays private

7. Track your poll history in your profile



Whether you’re killing time, breaking the ice at a party, or just love to debate, Pick A Side has you covered.



Popular Topics Include:

Funny poll questions


Friendly debates



Would You Rather dilemmas


Social dilemmas and hot takes


Moral choices and viral questions



Download Pick A Side today and make your voice heard!""",
                techStack: [
                  'Flutter',
                  'GETX',
                  'InApp-Purchases',
                  'FCM-Notification',
                ],
              ),

              ProjectOverviewWidget(
                playStoreUrl:
                    'https://play.google.com/store/apps/details?id=com.lynnette.kitchen&hl=en_IN',

                title: "Lynnette's Kitchen",
                description:
                    """Welcome to Lynnette's Kitchen App, where everyone can easily learn to cook delicious meals and desserts! Launched in 2024 by Chef Lynnette's team, our app is designed to inspire cooks of all levels with step-by-step instructions and live video cooking demonstrations.""",
                techStack: [
                  'Flutter',
                  'BLOC',
                  'InApp-Purchases',
                  'OneSignal',
                  'AGORA',
                ],
              ),
              ProjectOverviewWidget(
                imageUrl: 'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/27/e6/c8/27e6c84c-b4f0-2091-c525-0fb1f4a95cea/AppIcon-0-0-1x_U007epad-0-1-0-85-220.png/230x0w.webp',
                appStoreUrl: 'https://apps.apple.com/id/app/variablegrid/id6670303384',
                playStoreUrl:
                'https://play.google.com/store/apps/details?id=com.varian.varian&hl=en_IN',

                title: "Variablegrid",
                description:
                """Closed user group application for existing customers of Variablegrid Adaptive Power Inc. The app allows our customers to monitor and control the use of their personal EV charger""",
                techStack: [
                  'Flutter',
                  'BLOC',
                  'SOCKET.io'
                ],
              ),
              ProjectOverviewWidget(
                imageUrl: 'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/a7/c0/36/a7c0369f-6a92-5a75-cf6d-c8b41e3dda8c/AppIcon-0-0-1x_U007emarketing-0-8-0-85-220.png/230x0w.webp',
                appStoreUrl: 'https://apps.apple.com/in/app/web-school-manager/id1361926412',
                playStoreUrl:
                'https://play.google.com/store/apps/details?id=com.AkaalWebSoft.WebSchoolManager&hl=en_IN',

                title: "Web School Manager",
                description:
                """Web School Manager is engineered keeping in mind every single big and small requirement of all the school stakeholders whether principal, teacher, administrator or the students. Each module is tailored to make the functioning of the respective department effortless and impeccable.""",
                techStack: [
                  'Flutter',
                  'GETx',
                  'SOCKET.io',
                  'Google Map',
                  'FirebaseFirestore'
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
