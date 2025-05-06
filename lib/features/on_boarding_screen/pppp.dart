
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool ispassword = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,

//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             PrimaryButtonWidget(
//               buttonText: "login",
//               fontsize: 15.sp,
//               width: 330.w,
//               height: 56.h,

//               onPress: () {},
//             ),
//             SizedBox(height: 20),

//             primaryOutlineButtonWidget(
//               buttonText: "login",
//               fontsize: 15.sp,
//               width: 330.w,
//               height: 56.h,
//               onPress: () {},
//             ),
//             const SizedBox(height: 20),
//             CustomTextFleid(hinText: "enter your Email"),
//             const SizedBox(height: 20),
//             CustomTextFleid(
//               hinText: "password",
//               ispassword: ispassword,
//               suffixIcon: IconButton(
//                 onPressed: () {
//                   setState(() {
//                     ispassword = !ispassword;

//                   });
//                 },
//                 icon: Icon(ispassword ?
//                   Icons.remove_red_eye_outlined:  Icons.visibility_off_outlined,
//                   color: const Color(0xff6A707C),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
