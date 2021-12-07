// import 'package:flutter/material.dart';
// import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
// import 'package:arcore_flutter_plugin/src/arcore_controller.dart';
// import 'package:vector_math/vector_math_64.dart' as vector;

// class ARModel extends StatefulWidget {
//   @override
//   _ARModelState createState() => _ARModelState();
// }

// class _ARModelState extends State<ARModel> {
//   ArCoreController arCoreController;
//   _onViewCreated(ArCoreController _arCoreController) {
//     arCoreController = _arCoreController;
//     _addObject(arCoreController);
//   }

//   _addObject(ArCoreController _arCoreController) {
//     final material = ArCoreMaterial(color: Colors.blue);
//     final sphere = ArCoreSphere(
//       materials: [material],
//       radius: 0.3,
//     );
//     final node = ArCoreNode(
//       shape: sphere,
//       position: vector.Vector3(
//         0,
//         0,
//         -1,
//       ),
//     );
//     _arCoreController.addArCoreNode(node);
//   }

//   @override
//   void dispose() {
//     arCoreController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             automaticallyImplyLeading: false,
//             title: const Text('Room Decor'),
//             backgroundColor: Colors.blue),
//          body:
//         ArCoreView(
//           onArCoreViewCreated: _onViewCreated,
//         )
//         );
//   }
// }
