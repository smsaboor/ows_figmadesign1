// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class CustomBody extends StatelessWidget {
//   const CustomBody(
//       {Key? key,
//       required this.index,
//       required this.list})
//       : super(key: key);
//   final index;
//   final List list;
//
//   @override
//   Widget build(BuildContext buildContext) {
//     return BlocBuilder<>(
//       builder: (context, state) {
//         if (state == NetworkState.initial) {
//           return InternetError(text: TX_CHECK_INTERNET);
//         } else if (state == NetworkState.gained) {
//           return list.elementAt(index);
//         } else if (state == NetworkState.lost) {
//           return InternetError(text: TX_LOST_INTERNET);
//         } else
//           return InternetError(text: 'error');
//       },
//     );
//   }
// }
