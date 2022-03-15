// import 'dart:html';

import 'package:ayojasa/pages/user/user_login.dart';
import 'package:ayojasa/theme.dart';
import 'package:ayojasa/widget/animated_indicator.dart';
import 'package:ayojasa/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:introduction_screen/src/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class onboardingUser extends StatelessWidget {
  const onboardingUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
                title: 'Pilih jasa sesuai kebutuhan',
                body:
                    'Dengan memilih kategori jasa yaitu: \n Per Jam, Per Hari, Per Project',
                image: buildImage('assets/lottie/milih_orang.json'),
                decoration: getPageDecoration()),
            PageViewModel(
                title: 'Konsultasi dengan penyedia jasa',
                body: 'Saling terhubung dengan fitur chatting',
                image: buildImage('assets/lottie/48405-mobile.json'),
                decoration: getPageDecoration()),
            PageViewModel(
                title: 'Gunakan pembayaran yang aman',
                body:
                    'Kurangi risiko \n dengan menggunakan pembayaran yang aman',
                footer: ButtonWidget(
                  text: 'Get Started',
                  onClicked: () => gotoHome(context),
                ),
                image: buildImage('assets/lottie/33810-payments.json'),
                decoration: getPageDecoration())
          ],
          done: Text(
            'Start',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          onDone: () => gotoHome(context),
          showSkipButton: true,
          skip: Text(
            'Lewati',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          showNextButton: true,
          next: Text(
            'Selanjutnya',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          dotsDecorator: getDotsDecoration(),
          globalBackgroundColor: Color.fromARGB(255, 72, 80, 185),
          animationDuration: 500,
        ),
      );

  void gotoHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => userLogin()),
      );

  Widget buildImage(String path) => Center(
        child: LottieBuilder.asset(
          path,
          width: 350,
        ),
      );

  DotsDecorator getDotsDecoration() => DotsDecorator(
      color: Color.fromARGB(255, 143, 136, 136),
      activeColor: Color.fromARGB(255, 255, 255, 255),
      size: Size(10, 10),
      activeSize: Size(20, 10),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ));

  PageDecoration getPageDecoration() => PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: bold,
          color: Color.fromARGB(255, 255, 255, 255)),
      bodyTextStyle: TextStyle(
          fontSize: 14,
          fontWeight: light,
          color: Color.fromARGB(255, 255, 255, 255)),
      descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
      imagePadding: EdgeInsets.all(16),
      pageColor: Color.fromARGB(255, 72, 80, 185));
}

// class onboardingUser extends StatefulWidget {
//   onboardingUser({Key? key}) : super(key: key);

//   @override
//   State<onboardingUser> createState() => _onboardingUserState();
// }

// class _onboardingUserState extends State<onboardingUser> {
//   final pageController = new PageController(initialPage: 0);

//   void nextPage() {
//     pageController.nextPage(
//         duration: const Duration(milliseconds: 200), curve: Curves.ease);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: biruPrimary,
//       body: SafeArea(
//           child: Container(
//         child: PageView(
//           controller: pageController,
//           physics: NeverScrollableScrollPhysics(),
//           children: [
//             Slide(
//               hero: LottieBuilder.asset('assets/lottie/milih_orang.json'),
//               title: 'Pilih jasa sesuai kebutuhan',
//               subtitle: 'Dengan memilih kategori jasa yaitu:',
//               subsubtitle: 'Per Jam, Per Hari, Per Project',
//               onNext: nextPage,
//             ),
//             Slide(
//               hero: LottieBuilder.asset('assets/lottie/chatting.json'),
//               title: 'Konsultasi dengan penyedia jasa',
//               subtitle: 'Saling terhubung',
//               subsubtitle: 'Dengan fitur chatting',
//               onNext: nextPage,
//             ),
//             Slide(
//               hero: LottieBuilder.asset('assets/lottie/deal_biru.json'),
//               title: 'Gunakan pembayaran yang aman',
//               subtitle: 'Kurangi resiko',
//               subsubtitle: 'Dengan menggunakan pembayaran yang aman',
//               onNext: nextPage,
//             ),
//             MaterialApp(debugShowCheckedModeBanner: false, routes: {
//               '/': (context) => userLogin(),
//             }),
//           ],
//         ),
//       )),
//     );
//   }
// }

// class Slide extends StatelessWidget {
//   final Widget hero;
//   final String title, subtitle, subsubtitle;
//   final VoidCallback onNext;

//   const Slide(
//       {Key? key,
//       required this.hero,
//       required this.title,
//       required this.subtitle,
//       required this.subsubtitle,
//       required this.onNext})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Expanded(
//             child: hero,
//           ),
//           Padding(
//               padding: EdgeInsets.only(left: 16, top: 0, right: 20, bottom: 20),
//               child: Column(
//                 children: [
//                   Text(
//                     title,
//                     style: poppinsPutih.copyWith(
//                       fontSize: 20,
//                       fontWeight: bold,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   SizedBox(
//                     height: 24,
//                   ),
//                   Text(
//                     subtitle,
//                     style: poppinsGrey2.copyWith(
//                       fontSize: 14,
//                       fontWeight: regular,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text(subsubtitle,
//                       style: poppinsGrey2.copyWith(
//                         fontSize: 14,
//                         fontWeight: regular,
//                       )),
//                   SizedBox(
//                     height: 35,
//                   ),
//                   ProgressButton(onNext: onNext)
//                 ],
//               )),
//           GestureDetector(
//             onTap: () {
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (context) => userLogin()));
//             },
//             child: Text(
//               'Skip',
//               style: poppinsPutih.copyWith(
//                 fontSize: 14,
//                 fontWeight: light,
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 35,
//           )
//         ],
//       ),
//     );
//   }
// }

// class ProgressButton extends StatelessWidget {
//   final VoidCallback onNext;
//   const ProgressButton({Key? key, required this.onNext}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 60,
//       width: 60,
//       child: Stack(
//         children: [
//           AnimatedIndicator(
//             duration: const Duration(seconds: 7),
//             size: 75,
//             callback: onNext,
//           ),
//           Center(
//             child: GestureDetector(
//                 child: Container(
//                   height: 50,
//                   width: 50,
//                   child: Center(
//                     child: SvgPicture.asset(
//                       'assets/next_arrow_blue.svg',
//                       width: 30,
//                     ),
//                   ),
//                   decoration: BoxDecoration(
//                       color: putihPrimary,
//                       borderRadius: BorderRadius.circular(99)),
//                 ),
//                 onTap: onNext),
//           )
//         ],
//       ),
//     );
//   }
// }
