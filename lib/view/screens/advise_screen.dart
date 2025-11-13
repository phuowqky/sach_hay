
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:sach_hay/controllers/advise_controller.dart';
import 'package:sach_hay/core/theme/app_colors.dart';
import 'package:sach_hay/core/theme/app_sizes.dart';
import 'package:sach_hay/core/theme/app_text_styles.dart';
import '../widget/chat_input.dart';
import '../widget/chat_list.dart';

class AdviseScreen extends StatelessWidget {
  static const String adviseScreen = '/advise_screen';
  const AdviseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AdviseController());

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          leading: IconButton(onPressed: (){context.pop();}, icon: Icon(Icons.arrow_back)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/icons/botchat.svg',
                width: AppSizes.icon32,
                height: AppSizes.icon32,

              ),
              SizedBox(width: AppSizes.space8),
              Text("Tư Vấn Sách", style: AppTextStyles.h5.copyWith(color: AppColors.white),),
            ],
          ),
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
        ),
        body: Container(
          margin: EdgeInsets.all(AppSizes.space8),
          child: Column(
            children: [
              // danh sách chat
          
              Expanded(
                child: ChatList(
                  messages: controller.messages,
                  scrollController: controller.scrollController,
                ),
              ),
          
              // ô nhập
              ChatInput(
                textController: controller.textController,
                onSend: (value) {
                  controller.sendMessage(value);
                },
                isLoading: controller.isLoading,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
