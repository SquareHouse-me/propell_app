importScripts('https://www.gstatic.com/firebasejs/10.7.1/firebase-app-compat.js');
importScripts('https://www.gstatic.com/firebasejs/10.7.1/firebase-messaging-compat.js');

const firebaseConfig = {
  apiKey: "AIzaSyAXsUbrZGqyAHeJMIUOowoDIOra-6bEIdU",
  authDomain: "propell-c04bd.firebaseapp.com",
  databaseURL: "https://propell-c04bd-default-rtdb.firebaseio.com",
  projectId: "propell-c04bd",
  storageBucket: "propell-c04bd.firebasestorage.app",
  messagingSenderId: "254485088339",
  appId: "1:254485088339:web:551671e5c4b6c24ef71ea6",
  measurementId: "G-VGS8LFNGGV"
};
firebase.initializeApp(firebaseConfig);
  const messaging = firebase.messaging();

  /*messaging.onMessage((payload) => {
  console.log('Message received. ', payload);*/
  messaging.onBackgroundMessage(function(payload) {
    console.log('Received background message ', payload);

    const notificationTitle = payload.notification.title;
    const notificationOptions = {
      body: payload.notification.body,
    };

    self.registration.showNotification(notificationTitle,
      notificationOptions);
  });