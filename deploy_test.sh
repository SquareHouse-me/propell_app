flutter clean
fvm flutter build web --release --dart-define=FLUTTER_WEB_CANVASKIT=true
# fvm flutter build web --release --wasm
firebase deploy --only hosting:propell-test