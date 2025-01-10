// import 'package:flutter/material.dart';
// import 'package:easy_web_view/easy_web_view.dart';
 
// class WebViewPage extends StatelessWidget {
//   String
//   const WebViewPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Easy Web View Example'),
//       ),
//       body: EasyWebView(
//         src: "https://flutter.dev", // Replace with your desired URL or HTML content
//          // If `src` is an HTML string, set this to true
//         isMarkdown: false, // If `src` is Markdown, set this to true
//         convertToWidgets: false, // Convert web content to widgets (if needed)
//         onLoaded: (v) {
//           debugPrint("WebView Loaded! ${v.toString()}" );
//         },
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//       ),
//     );
//   }
// }
