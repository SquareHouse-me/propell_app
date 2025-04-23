flutter clean
flutter build web --release --dart-define=FLUTTER_WEB_CANVASKIT=true
firebase deploy --only hosting:mypropellapp