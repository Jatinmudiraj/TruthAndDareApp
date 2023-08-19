import 'package:flutter/cupertino.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobService {
  static String? get bannerAdUnitId {
    return 'ca-app-pub-2890761387198116/6316503125';
    // ignore: dead_code
    // return null;
  }

  static String? get interstitialAdUnitId {
    return 'ca-app-pub-2890761387198116/6774586559';
    // ignore: dead_code
    // return null;
  }

  static String? get rewardedAdUnitId {
    return 'ca-app-pub-2890761387198116/4204263530';
    // ignore: dead_code
    // return null;
  }

  static final BannerAdListener bannerAdListener = BannerAdListener(
    onAdLoaded: (ad) => debugPrint('Ad loaded.'),
    onAdFailedToLoad: (ad, error) {
      ad.dispose();
      debugPrint('Ad failed to load: $error');
    },
    onAdOpened: (ad) => debugPrint('Ad opened'),
    onAdClosed: (ad) => debugPrint('Ad closed'),
  );
}
