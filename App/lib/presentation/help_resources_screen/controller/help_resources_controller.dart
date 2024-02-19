import "package:Pilgrim/core/app_export.dart";
import 'package:Pilgrim/presentation/help_resources_screen/models/help_resources_model.dart';

class HelpResourcesController extends GetxController {
  Rx<HelpResourcesModel> helpResourcesModelObj = HelpResourcesModel().obs;
  final RxList<CardData> cardHelplineList = RxList<CardData>();
  final RxList<CardData> cardResourcesList = RxList<CardData>();

  @override
  void onInit() {
    super.onInit();
    // Add your card data objects here
    cardHelplineList.addAll([
      CardData(
        website: "9152987821",
        title: "Vishram",
        description: "India",
        url: "tel:+919152987821",
      ),
      CardData(
        website: "1-800-273-8255",
        title: "National Suicide Prevention Lifeline",
        description: "USA",
        url: "tel:+1 1-800-273-8255",
      ),
      CardData(
        website: "116 123",
        title: "Samaritans",
        description: "UK",
        url: "tel:+44116123",
      ),
      CardData(
        website: "13 11 14",
        title: "Lifeline",
        description: "Australia",
        url: "tel:+611311114",
      ),
      CardData(
        website: "+912225521187",
        title: "TISS iCall",
        description: "India/Global",
        url: "tel:+912225521187",
      ),
      // Add more cards as needed
    ]);
    cardResourcesList.addAll([
      CardData(
        website: "tissx.tiss.edu",
        title: "TISS iCall",
        description: "India/Global",
        url: "https://icallhelpline.org/",
      ),
      CardData(
        website: "nimh.nih.gov",
        title: "National Suicide Prevention Lifeline",
        description: "USA",
        url: "http://nimh.nih.gov",
      ),
      CardData(
        website: "mind.org.uk",
        title: "Mind",
        description: "UK",
        url: "http://mind.org.uk",
      ),
      CardData(
        website: "beyondblue.org.au",
        title: "Beyond Blue",
        description: "Australia",
        url: "http://beyondblue.org.au",
      ),
      // Add more cards as needed
    ]);
  }
}
