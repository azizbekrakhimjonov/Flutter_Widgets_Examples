import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_browser/web_browser.dart';

// void main() {
//   const app = CupertinoApp(
//     title: 'Example',
//     debugShowCheckedModeBanner: false,
//     home: CupertinoPageScaffold(
//       child: SafeArea(
//         child: Browser(
//           initialUriString: 'https://flutter.dev/',
//         ),
//       ),
//     ),
//   );
//   // const app = MaterialApp(
//   //   title: 'Example',
//   //   debugShowCheckedModeBanner: false,
//   //   home: Scaffold(
//   //     body: SafeArea(
//   //       child: Browser(
//   //         initialUriString: 'https://flutter.dev/',
//   //       ),
//   //     ),
//   //   ),
//   // );
//
//   runApp(app);
// }


class SecondRoute extends StatelessWidget {
  const SecondRoute(this.url, {super.key});

  final url;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Browser(
          initialUriString: url.toString(),
        ),
      ),
    );
  }
}