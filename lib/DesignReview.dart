// import 'package:flutter/material.dart';
// import 'package:flutter_unity_widget/flutter_unity_widget.dart';

// class DesignReview extends StatefulWidget {
//   @override
//   _DesignReviewState createState() => _DesignReviewState();
// }

// class _DesignReviewState extends State<DesignReview> {
//   static final GlobalKey<ScaffoldState> _scaffoldKey =
//       GlobalKey<ScaffoldState>();
//   UnityWidgetController _unityWidgetController;
//   double _sliderValue = 0.0;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         key: _scaffoldKey,
//         appBar: AppBar(
//           title: const Text('Room Decor'),
//         ),
//         body: Card(
//           margin: const EdgeInsets.all(8),
//           clipBehavior: Clip.antiAlias,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20.0),
//           ),
//           child: Stack(
//             children: <Widget>[
//               UnityWidget(
//                 onUnityCreated: onUnityCreated,
//                 onUnityMessage: onUnityMessage,
//                 onUnitySceneLoaded: onUnitySceneLoaded,
//                 fullscreen: false,
//               ),
//               Positioned(
//                 bottom: 20,
//                 left: 20,
//                 right: 20,
//                 child: Card(
//                   elevation: 10,
//                   child: Column(
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.only(top: 20),
//                         child: Text("Rotation speed:"),
//                       ),
//                       Slider(
//                         onChanged: (value) {
//                           setState(() {
//                             _sliderValue = value;
//                           });
//                           setRotationSpeed(value.toString());
//                         },
//                         value: _sliderValue,
//                         min: 0,
//                         max: 20,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }


//   void setRotationSpeed(String speed) {
//     _unityWidgetController.postMessage(
//       'Cube',
//       'SetRotationSpeed',
//       speed,
//     );
//   }

//   // Communication from Unity to Flutter
//   void onUnityMessage(message) {
//     print('Received message from unity: ${message.toString()}');
//   }

//   // Callback that connects the created controller to the unity controller
//   void onUnityCreated(controller) {
//     this._unityWidgetController = controller;
//   }

//   // Communication from Unity when new scene is loaded to Flutter
//   void onUnitySceneLoaded(SceneLoaded sceneInfo) {
//     print('Received scene loaded from unity: ${sceneInfo.name}');
//     print('Received scene loaded from unity buildIndex: ${sceneInfo.buildIndex}');
//   }
// }
