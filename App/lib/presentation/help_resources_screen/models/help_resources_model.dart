
import '../../../core/app_export.dart';

/// This class defines the variables used in the [help_resources_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HelpResourcesModel {
}
class CardData {
  final String website;
  final String? title; // Allow title to be optional
  final String? description; // Allow description to be optional
  final String url;
  const CardData({
    required this.website,
    this.title,
    this.description,
    required this.url,
  });
}
