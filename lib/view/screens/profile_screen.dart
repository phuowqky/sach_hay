//
//
// import 'package:flutter/material.dart';
// import 'package:sach_hay/core/theme/app_colors.dart';
//
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Stack(
//         children: [
//           Positioned(
//               child: Image.network(
//             'https://i.pinimg.com/736x/e1/1e/37/e11e372a3bb46f4aca8b70b245e14e75.jpg',
//             fit: BoxFit.fill,
//           )),
//           DraggableScrollableSheet(
//               initialChildSize: 0.75,
//               minChildSize: 0.75,
//               maxChildSize: 0.75,
//               builder: (context, scrollController) {
//                 return Container(
//                   height: 10,
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius:
//                         BorderRadius.vertical(top: Radius.circular(20)),
//                   ),
//                   child: ListView(
//                     controller: scrollController,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Container(
//                             margin: const EdgeInsets.only(
//                                 top: 16, left: 16, bottom: 16),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(16),
//                               color: Colors.black
//                             ),
//                             height: 96,
//                             width: 156,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Image.asset("assets/images/Hosocuatoi.png", height: 42, width: 42,),
//                                 const Text(
//                                   "Hồ sơ của tôi",
//                                   style: TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ],
//                             )
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 );
//               })
//         ],
//       )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:sach_hay/core/theme/app_colors.dart';
import 'package:sach_hay/core/theme/app_sizes.dart';
import 'package:sach_hay/core/theme/app_text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              Container(
                height: 144,
                decoration: BoxDecoration(
                  color: AppColors.primary
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 12),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('https://i.pinimg.com/736x/e1/1e/37/e11e372a3bb46f4aca8b70b245e14e75.jpg'),
                      ),
                      SizedBox(width:  AppSizes.space12,),
                      Text("Phương Trường Kỳ", style: AppTextStyles.h6.copyWith(color: AppColors.white),)
                    ],
                  ),
                ),

              ),

              _MenuItem(
                icon: Icons.person,
                title: 'Hồ sơ của tôi',
                onTap: () {
                  // Xử lý khi nhấn vào mục "Hồ sơ của tôi"
                },
              ),
      ],
          )
        ),
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _MenuItem({
    required this.icon,
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primaryLight),
      title: Text(title),
      onTap: () {
        onTap.call();
      },
    );
  }
}