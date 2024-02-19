import '../drawer_draweritem/controller/drawer_controller.dart';
import '../drawer_draweritem/drawer_draweritem.dart';
import 'controller/chat_message_controller.dart';
import 'controller/the_pilgrim_controller.dart';
import 'package:flutter/material.dart' hide DrawerController;
import 'package:Pilgrim/core/app_export.dart';
import 'package:Pilgrim/widgets/custom_icon_button.dart';
import 'package:Pilgrim/widgets/custom_text_form_field.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

// ignore_for_file: must_be_immutable

class ThePilgrimScreen extends GetWidget<ThePilgrimController> {
  ThePilgrimScreen({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: true, // Adjust layout for keyboard
        drawer: DrawerDraweritem(DrawerController()),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTopBar(),
              SizedBox(height: 13.v),
              _buildChatSection(),
              SizedBox(height: 15.v),
              _buildSeven(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Title-bar Widget
  Widget _buildTopBar() {
    return SizedBox(
        height: 150.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgAbout1150x393,
              height: 150.v,
              width: 393.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 15.h, bottom: 20.v),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 63.v),
                            child: CustomIconButton(
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                                alignment: Alignment.bottomLeft,
                                onTap: () {
                                  overlaydrawer();
                                },
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgDrawerIcon))),
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 40.h, top: 10.v),
                            child: Text("lbl_the_pilgrim".tr,
                                maxLines: 5,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.displayMedium))
                      ])))
        ]));
  }
  //chat-section
  Widget _buildChatSection() {
    final pilgrimController = Get.find<ThePilgrimController>();

    return Expanded(
      child: SingleChildScrollView(
        child: Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Hello there, you message box
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.v),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.h, vertical: 6.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.botMessageRadius,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 4.v),
                          SizedBox(
                            width: 300,
                            child: Text(
                              "msg_hello_there_you".tr,
                              maxLines: null,
                              overflow: TextOverflow.visible,
                              style: CustomTextStyles.bodyLargeGray900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Spacer
                SizedBox(height: 10.v),

                // Chat messages
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.v),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Iterate through user and bot messages
                      for (int i = 0;
                          i < pilgrimController.userMessages.length ||
                              i < pilgrimController.botMessages.length;
                          i++) ...[
                        if (i < pilgrimController.userMessages.length)
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.h, vertical: 6.v),
                              decoration:
                                  AppDecoration.gradientIndigoToPurple.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.userMessageRadius,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    pilgrimController.userMessages[i],
                                    maxLines: null,
                                    overflow: TextOverflow.visible,
                                    style: CustomTextStyles.bodyLargeWhiteA700
                                        .copyWith(
                                      fontSize: 18.h,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        SizedBox(height: 10.v),
                        // Add spacing between user and bot messages
                        if (i < pilgrimController.botMessages.length)
                          Container(
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.h, vertical: 6.v),
                                decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.botMessageRadius,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 4.v),
                                    SizedBox(
                                      width: 300,
                                      child: Markdown(
                                        data: pilgrimController.botMessages[i],
                                        padding: EdgeInsets.zero,
                                        // Adjust padding as needed
                                        shrinkWrap: true,
                                        controller: ScrollController(),
                                        // Ensures text wraps within the width
                                        styleSheet: MarkdownStyleSheet(
                                          // Define your desired text style for the body text
                                          p: TextStyle(
                                            fontSize:
                                                18, // Adjust the font size as needed
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        if (i < pilgrimController.userMessages.length &&
                            i + 1 < pilgrimController.botMessages.length)
                          SizedBox(height: 10.v),
                        // Add spacing between user and bot messages
                      ],
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven() {
    final ChatMessageController controller = Get.put(ChatMessageController());

    return Padding(
      padding: EdgeInsets.only(left: 17.h, right: 10.h, bottom: 10.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: controller.messageController,
              hintText: "msg_type_your_message".tr,
              hintStyle: TextStyle(color: Colors.grey[600]),
              textStyle: TextStyle(color: Colors.black, fontSize: 18),
              textInputAction: TextInputAction.send,
              // Set to "send" action
              maxLines: 3,
              contentPadding: EdgeInsets.all(10.h),
              borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
              filled: true,
              fillColor: appTheme.whiteA700,
              // Listen for the "Enter" key press event
              onSubmitted: (String text) async {
                String prompt = controller.messageController.text;
                ThePilgrimController pilgrimController =
                Get.find<ThePilgrimController>();
                controller.messageController.clear();
                pilgrimController
                    .addUserMessage(prompt);
                String response = await controller.sendChatMessage(prompt);
                pilgrimController.addBotMessage(response);
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.send_sharp),
            onPressed: () async {
              String prompt = controller.messageController.text;
              ThePilgrimController pilgrimController =
              Get.find<ThePilgrimController>();
              controller.messageController.clear();
              pilgrimController
                  .addUserMessage(prompt);
              String response = await controller.sendChatMessage(prompt);
              pilgrimController.addBotMessage(response);
            },
          ),
        ],
      ),
    );
  }

  /// Opens the drawer of the current scaffold using the [_scaffoldKey] instance
  /// variable.
  overlaydrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
