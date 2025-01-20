'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "8abbc0c547b2cc008f2c21133c51439e",
"version.json": "bfd284b4604d52fceefd573e83bcc6bd",
"index.html": "d5aaab542030c5abb1762b25b8d6c108",
"/": "d5aaab542030c5abb1762b25b8d6c108",
"test/widget_test.dart": "db9daddf2c02283aee3acd04267e64dd",
"main.dart.js": "f07782caa6c68556492c9183678e5c58",
"web/index.html": "acf1709addbd3f0683d15f056f550843",
"web/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"web/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"web/icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"web/icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"web/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"web/manifest.json": "3b921f63ed60c3154f817d9380fba61a",
"pubspec.lock": "ba1ce2f206e2376d8d1fc04e06f8899d",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"README.md": "4150a6b81eb767b4dbab7351dfc21a98",
"favicon.png": "9877f26cfa9990fcef385f60da009620",
"pubspec.yaml": "cb556677a923b79229674af75aaff088",
"icons/Icon-192.png": "b7566f56e4687c5b3feb0f3e3e332d5c",
"icons/Icon-maskable-192.png": "b7566f56e4687c5b3feb0f3e3e332d5c",
"icons/Icon-maskable-512.png": "2fc50b47373529f470498adf196ed4f7",
"icons/Icon-512.png": "2fc50b47373529f470498adf196ed4f7",
"manifest.json": "10577554ba4be9de43a75b1eb7bbf332",
"lib/main.dart": "86b0318255916c11ea138782b971c22e",
"analysis_options.yaml": "66d03d7647c8e438164feaf5b922d44a",
".dart_tool/package_config.json": "4ea86a2d7f8b3690cf7ab4bc429e1239",
".dart_tool/dartpad/web_plugin_registrant.dart": "7ed35bc85b7658d113371ffc24d07117",
".dart_tool/package_config_subset": "b60aaeb1b7c171ef26763f751934c628",
".dart_tool/version": "25ee9efba65d9e7640c78105cc56eace",
"assets/AssetManifest.json": "39ad04656054ad6ebfe97a7593bbfb58",
"assets/NOTICES": "a506e1d4446bd905afb7c27a68495ed3",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "3bfacbcff030472c79455aea8a0f616d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/easy_stepper/assets/loading_black.json": "d412b17ec906f03090996d68abab4eca",
"assets/packages/easy_stepper/assets/loading_white.json": "92623d18291ed579cf8bfe3f5fc74213",
"assets/packages/flutter_inappwebview_web/assets/web/web_support.js": "ffd063c5ddbbe185f778e7e41fdceb31",
"assets/packages/flutter_inappwebview/assets/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/assets/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "9a73492a15c500d26528cf807012d93f",
"assets/fonts/MaterialIcons-Regular.otf": "066eb6051da2641f9dbe35b373400908",
"assets/assets/images/AppBannerLogo.png": "9361d495ec2a26758c4e8334d2b1dd9e",
"assets/assets/images/appLogo.png": "ef5d396880938fa6f128c68a42db9ff5",
"assets/assets/images/webLogo.png": "2518b3d5621d597fc8c8170cd4baee2d",
"assets/assets/images/webBannerLogo.png": "26874a0d44502badc77c208448553f9d",
"assets/assets/images/appIcons.png": "eea3642364b966a767c17804d16957d1",
"assets/assets/images/propellIcon.png": "25382cca06877e509996a467e310cd7a",
"assets/assets/icons/directionDown.svg": "76eb125efba334dabaf7918f51ac5c5f",
"assets/assets/icons/interiorConsultation.svg": "e2ff9713d9539851891db1a3c3bc49ee",
"assets/assets/icons/buildings.svg": "579ed2b52f05ff141ea82357c0203ad2",
"assets/assets/icons/globalIcon.svg": "f10ac2d68dd39a2b3e31e17fbb416b6c",
"assets/assets/icons/appBarLogo.svg": "3fe001e1f7812cf0198768a519b464a7",
"assets/assets/icons/wifi.svg": "624d59f00e0fa99a56028aef9cc0100b",
"assets/assets/icons/architectureConsultation.svg": "87ea4a43406d8489f99fa0dcc0cbf67b",
"assets/assets/icons/starIcon.svg": "35c2e33de2eb22e23e64519005c4209e",
"assets/assets/icons/appBarWebLogo.svg": "ed6d2b62e81be76b899e0eb6cb343625",
"assets/assets/icons/landscapingConsultation.svg": "644ea6638f4988c38970d0821ac41ffe",
"assets/assets/icons/profileUser.svg": "112e3bf9226e888f1fee2aac4dccee6d",
"assets/assets/icons/clock.svg": "4a2e04aea1da62728215195f14c85a13",
"assets/assets/icons/thankyou.svg": "9c1c108a5e7ea574b5b9c0f3ff0bca3b",
"assets/assets/icons/calendar.svg": "602c44cd3cc40e38f16d7be780d427cd",
"assets/assets/icons/profile-circle.svg": "d35965afdeb003bd2cceb46d304016f4",
"assets/assets/icons/sendSquare.svg": "b5eef7660474a5b1d7eb19fc9577bdcb",
"propell_c04bd.iml": "731a1a3080009db8d4572ef3fb1679c3",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
".idea/runConfigurations/main_dart.xml": "2b82ac5d547e7256de51268edfd10dc3",
".idea/libraries/Dart_SDK.xml": "e1f4e4c188726431b8ddaa3cb203432f",
".idea/libraries/KotlinJavaRuntime.xml": "4b0df607078b06360237b0a81046129d",
".idea/workspace.xml": "cc5f609be0f96835c87839f62217d14b",
".idea/modules.xml": "25a5fcf97331d00825469a69017882c1"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
