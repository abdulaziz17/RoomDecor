// import 'dart:convert';
// import 'dart:io';
// import 'dart:math';
// import 'package:RoomDecor/Addcom.dart';
// import 'package:http/http.dart' as http;

// import 'package:flutter/material.dart';
// import 'package:stripe_payment/stripe_payment.dart';
// class Payment extends StatefulWidget {
//   @override
//   _PaymentState createState() => _PaymentState();
// }

// class _PaymentState extends State<Payment> {
  
//   double payment= 10.0;
//   bool isLoading = false;
//   int amt = 0;
//   var url = 'https://us-central1-flutterdemo-c949a.cloudfunctions.net/stripePa';


//   @override
//   void initState(){
//     super.initState();
//     StripePayment.setOptions(
//       StripeOptions(publishableKey: 'pk_test_51Is5KfI1vhjZogRP1U5v4Zc8mO49l2UAElrPzQerjXfAlbgYgi624IbudBX8maGhKB31JO18LUFFl6uZ9kKA9rEF00zG1k1pC1'
//       )
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           automaticallyImplyLeading: false,
//           title: const Text('Room Decor'),
//           backgroundColor: Colors.blue),
//       body: Center(
//         child: Column(children: [
//           SizedBox(
//             height: 200,
//           ),
//           SizedBox(
//             width: 200.0,
//             height: 80.0,
//             child: Text("Please proceed to make payment",style: TextStyle(color: Colors.black), textAlign: TextAlign.center),
            
              
//             ),
          
//           SizedBox(
//             height: 10,
//           ),
//           SizedBox(
//             width: 200.0,
//             height: 100.0,
//             child: new MaterialButton(
//               child: Text("Make Payment"),
//               color: Colors.blue,
//               onPressed: () {
                
//               },
//             ),
//           ),
//         ]),
//       ),
      
      
      
     
//     );
//   }

//   Future<void> makePayment()async{
//     StripePayment.setStripeAccount(null);

//     amt = (10*100).toInt();
//     PaymentMethod pM= PaymentMethod();
//     pM=await StripePayment.paymentRequestWithCardForm(
//       CardFormPaymentRequest(),
//       ).then((PaymentMethod pM){
//       return pM;
//     }).catchError((exception){
//       print(exception);
//     });
//     startCharge(pM);
//   }

//   Future<void> startCharge(PaymentMethod pM) async {
//    final http.Response response=await http.post(Uri.parse('$url?amount=$amt&currency=USD&paym=${pM.id}'));

//     if (response.body != null){
//       final paymentIntent = jsonDecode(response.body);
//       final status = paymentIntent['paymentIntent']['status'];
//       final account = paymentIntent['stripeAccount'];
//       if(status == 'succeeded'){
//         print('Payment Completed');
//       }
//       else{
//         StripePayment.setStripeAccount(account);
//         await StripePayment.confirmPaymentIntent(PaymentIntent(paymentMethodId: paymentIntent['paymentIntent']['payment_method'],clientSecret: paymentIntent['paymentIntent']['client_secret'])).
//         then((PaymentIntentResult paymentIntentResult) async {
//           final paymentStatus = paymentIntentResult.status;
//           if (paymentStatus== 'succeeded'){
//             print('Payment is done');
//           }
//         });
//       }
//     }
//   }
// }