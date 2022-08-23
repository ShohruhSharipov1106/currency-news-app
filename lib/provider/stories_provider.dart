import 'package:currency_news_app/constants/exports.dart';

class StoriesProvider extends ChangeNotifier {
  bool isClosed = false;
  bool hasWatched =  false;
  deleteNotification() {
    isClosed = true;
    notifyListeners();
  }

  watchedStories(bool story) {
    story = true;
    notifyListeners();
  }
}
