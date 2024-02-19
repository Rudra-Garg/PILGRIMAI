import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/app_export.dart';
import '../controller/help_resources_controller.dart';
import '../models/help_resources_model.dart';

class CardWidget extends GetWidget<HelpResourcesController> {
  final CardData cardData;

  const CardWidget({required this.cardData});

  @override
  Widget build(BuildContext context) {
    double titleFontSize =
        cardData.title == 'National Suicide Prevention Lifeline' ? 11.0 : 14.0;

    return GestureDetector(
      onTap: () {
        if (cardData.url != null && cardData.url.isNotEmpty) {
          launch(cardData.url);
        } else {
          // Handle case where URL is null or empty
          print('Error: URL is null or empty');
        }
      }, // Launch website on tap
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        margin: EdgeInsets.all(8.0),
        width: 115,
        height: 125,
        child: Container(
          width: 115,
          height: 125,
          padding: EdgeInsets.all(5.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.v, bottom: 5.v),
                child: ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF9938E6),
                        Color(0xFFDF2973),
                      ],
                    ).createShader(bounds);
                  },
                  child: Text(
                    cardData.title!,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: titleFontSize,
                      // Set font size based on condition
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.v, bottom: 5.v),
                child: ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFEECB15),
                        Color(0xFFF65900),
                      ],
                    ).createShader(bounds);
                  },
                  child: Text(
                    cardData.description!,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Text(
                cardData.website,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 13.5,
                  // Set font size based on condition
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
