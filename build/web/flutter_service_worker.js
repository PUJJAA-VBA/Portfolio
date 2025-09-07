'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "4dc769c2b99d357e3f30b103b1a6518f",
"assets/AssetManifest.bin.json": "82f3386778c90546d529799db77fe11c",
"assets/AssetManifest.json": "ab15cb1c1caf68be0df468f3bc214214",
"assets/assets/fonts/AlmendraDisplay-Regular.ttf": "d8704060975bf938ab754460f14e3108",
"assets/assets/fonts/AlumniSansInlineOne-Italic.ttf": "696c9bca902798b19bde8829780d7a26",
"assets/assets/fonts/AlumniSansInlineOne-Regular.ttf": "53095761ef92e661f8f15f3ac55fb83b",
"assets/assets/fonts/Barriecito-Regular.ttf": "94c9ab0c4e14aa8632e6f0f13bd5dfbb",
"assets/assets/fonts/Barrio-Regular.ttf": "fbb71610159cbf4eb39c5aab0597bc40",
"assets/assets/fonts/Birthstone-Regular.ttf": "6fad7599c152c89b1fe81cb08365cf71",
"assets/assets/fonts/BitcountGridDouble-VariableFont_CRSV,ELSH,ELXP,slnt,wght.ttf": "912141eff4eaea3ab85aba575aa8d94a",
"assets/assets/fonts/BonheurRoyale-Regular.ttf": "c82a2266333213342bc45317af97dfea",
"assets/assets/fonts/BungeeTint-Regular.ttf": "5215049cade65249a51475538db1416f",
"assets/assets/fonts/Carattere-Regular.ttf": "47d607fabf2194abbcf2b45e007e9188",
"assets/assets/fonts/Condiment-Regular.ttf": "af80543b3856da59f0282cc61a17e34f",
"assets/assets/fonts/Corinthia-Bold.ttf": "424c7dd5f8ff2ba5a7e2cc74024f621f",
"assets/assets/fonts/Corinthia-Regular.ttf": "7671e058b85669fbd501be1c1cb6fb0c",
"assets/assets/fonts/DancingScript-VariableFont_wght.ttf": "6c13f0a369bac247a279351b7338eaf0",
"assets/assets/fonts/Explora-Regular.ttf": "4f5acf0c48061d47a24fcd30258d8c86",
"assets/assets/fonts/Felipa-Regular.ttf": "7b42d9e307add03d002fb20d75207f80",
"assets/assets/fonts/FontdinerSwanky-Regular.ttf": "9445e59e97188921b871b45eed4b0086",
"assets/assets/fonts/HanaleiFill-Regular.ttf": "0825fc1a206558f59f7f8ff29256393f",
"assets/assets/fonts/IrishGrover-Regular.ttf": "3dd8c2215323670a6f0f19645ac0de6e",
"assets/assets/fonts/IslandMoments-Regular.ttf": "a6f5e4be9854fb6a8ccebd5dd47e0f92",
"assets/assets/fonts/Italianno-Regular.ttf": "93cb3737a746d5f036fc1285806c785c",
"assets/assets/fonts/JollyLodger-Regular.ttf": "df1e5c9a1e244300d1111aca8b314e88",
"assets/assets/fonts/JotiOne-Regular.ttf": "bd8895a0aa62f915322e9c400e4a4451",
"assets/assets/fonts/KalniaGlaze-VariableFont_wdth,wght.ttf": "1248b807118f237d060ac2cb9ba4c98d",
"assets/assets/fonts/Knewave-Regular.ttf": "f77e1ba76d6ce86a4639dce4a09b2db5",
"assets/assets/fonts/LavishlyYours-Regular.ttf": "5586c391a544dba31cf81181c1fa5c73",
"assets/assets/fonts/LibertinusMono-Regular.ttf": "60a3da66bd77bb1a2ba32e1904dcd6d9",
"assets/assets/fonts/MeaCulpa-Regular.ttf": "80d27c7372e2418981034b10084eb01f",
"assets/assets/fonts/MeowScript-Regular.ttf": "36ddf73c92b7fef1d970d05512c49678",
"assets/assets/fonts/Montserrat-Italic-VariableFont_wght.ttf": "5a669c0a71801494df35130ab2f55295",
"assets/assets/fonts/Montserrat-VariableFont_wght.ttf": "b87689f37dfb5c51719210e4d96a34a2",
"assets/assets/fonts/MoonDance-Regular.ttf": "94469266b71db023e25360f1456c7e62",
"assets/assets/fonts/Nabla-Regular-VariableFont_EDPT,EHLT.ttf": "a878c75a798f095b245f0a172d186adb",
"assets/assets/fonts/Newsreader-Italic-VariableFont_opsz,wght.ttf": "98587e79de9846f9d93eb35a429a0c2a",
"assets/assets/fonts/Newsreader-VariableFont_opsz,wght.ttf": "1b9ef251f32952c6ce92dbacf4c5cb82",
"assets/assets/fonts/Nosifer-Regular.ttf": "b5fbe071f456bd8cfe3bf61ad1bdc22f",
"assets/assets/fonts/PoiretOne-Regular.ttf": "8d15f9c0d468e1de889e81fae1087b61",
"assets/assets/fonts/Poppins-Black.ttf": "14d00dab1f6802e787183ecab5cce85e",
"assets/assets/fonts/Poppins-BlackItalic.ttf": "e9c5c588e39d0765d30bcd6594734102",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins-BoldItalic.ttf": "19406f767addf00d2ea82cdc9ab104ce",
"assets/assets/fonts/Poppins-ExtraBold.ttf": "d45bdbc2d4a98c1ecb17821a1dbbd3a4",
"assets/assets/fonts/Poppins-ExtraBoldItalic.ttf": "8afe4dc13b83b66fec0ea671419954cc",
"assets/assets/fonts/Poppins-ExtraLight.ttf": "6f8391bbdaeaa540388796c858dfd8ca",
"assets/assets/fonts/Poppins-ExtraLightItalic.ttf": "a9bed017984a258097841902b696a7a6",
"assets/assets/fonts/Poppins-Italic.ttf": "c1034239929f4651cc17d09ed3a28c69",
"assets/assets/fonts/Poppins-Light.ttf": "fcc40ae9a542d001971e53eaed948410",
"assets/assets/fonts/Poppins-LightItalic.ttf": "0613c488cf7911af70db821bdd05dfc4",
"assets/assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/Poppins-MediumItalic.ttf": "cf5ba39d9ac24652e25df8c291121506",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/assets/fonts/Poppins-SemiBoldItalic.ttf": "9841f3d906521f7479a5ba70612aa8c8",
"assets/assets/fonts/Poppins-Thin.ttf": "9ec263601ee3fcd71763941207c9ad0d",
"assets/assets/fonts/Poppins-ThinItalic.ttf": "01555d25092b213d2ea3a982123722c9",
"assets/assets/fonts/Roboto-Italic-VariableFont_wdth,wght.ttf": "5b03341126c5c0b1d4db52bca7f45599",
"assets/assets/fonts/Roboto-VariableFont_wdth,wght.ttf": "3aa911d4a1e76c8946952fe744ce7434",
"assets/assets/fonts/Rubik80sFade-Regular.ttf": "649a7d38755c51c3dd4ee1a566c9be38",
"assets/assets/fonts/RubikDistressed-Regular.ttf": "24ea17ab41f06767b4923d87a36d055e",
"assets/assets/fonts/RubikGlitch-Regular.ttf": "31084a1e50a2f7d4ac413234d0e674c1",
"assets/assets/fonts/RubikIso-Regular.ttf": "e0e13a8cb3ae70b23317f3938d7e18ef",
"assets/assets/fonts/RubikMaps-Regular.ttf": "8f6d557ace3407f62687cd220e9f184a",
"assets/assets/fonts/RubikMarkerHatch-Regular.ttf": "ad50e7e0ff0b179a1092610b2ceb051e",
"assets/assets/fonts/RubikMicrobe-Regular.ttf": "bfb3f929210916bac212516391d44f41",
"assets/assets/fonts/RubikMoonrocks-Regular.ttf": "505b85a7427b821994b76da9539ea8d5",
"assets/assets/fonts/RubikPuddles-Regular.ttf": "440d6b492309c75ef08b849dd5ce66b5",
"assets/assets/fonts/Sacramento-Regular.ttf": "0c8e69ac621ffbdfdb997bef9b5aa312",
"assets/assets/fonts/SpecialElite-Regular.ttf": "0361d96faa98b0a716bec7e56e794c3d",
"assets/assets/fonts/Tangerine-Bold.ttf": "8159a553ef417c00bc5c02ccc269dbdd",
"assets/assets/fonts/Tangerine-Regular.ttf": "5bb6e4788f174bafaef61efaf6cee5c0",
"assets/assets/image/bg_image.jpg": "a569f769d1e4e4de1b9d7f22acdc3e41",
"assets/assets/image/bg_image1.png": "88aad0a8bd027e0c85e01d6068dd780c",
"assets/FontManifest.json": "fb09001d56e39dd817f21c9f9ec1bfd8",
"assets/fonts/MaterialIcons-Regular.otf": "620f4e130feb66cf3591ad05058a95c6",
"assets/NOTICES": "b41cae0e63845d9a9f56f1e528363ccf",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "714063688519a3cf0428e289bb8b2a04",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "2b60c53c5d6977ccdf4a9fc5cc0608c8",
"/": "2b60c53c5d6977ccdf4a9fc5cc0608c8",
"main.dart.js": "8ac34cc82f0362955ceb37382bbbfd46",
"manifest.json": "e1b27dda185b86bd4db3809aae187ef4",
"version.json": "2cb02b2bb623cd0d0a7319e22aade18e"};
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
