'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "60846147b37a368b4538ec36167c246f",
"/main.dart.js": "0cec74a79bb9945d97f2afc0c3cefddb",
"/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/manifest.json": "1aa0884de6ad06b173781361ebcce77f",
"/assets/LICENSE": "cb44f48b81be87cb0419c17fdbb3a9ab",
"/assets/images/01.png": "65163e9e0702ea375f2f4e762875cf17",
"/assets/images/03.png": "1ac47d5ff6105a5873fad5510db6f924",
"/assets/images/02.png": "966c855e38ee504642a04149d4d46340",
"/assets/images/04.png": "367a813aac7eaf7540f5be4d134e3be7",
"/assets/AssetManifest.json": "e57385efeed8eb040a18487bf775a223",
"/assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
