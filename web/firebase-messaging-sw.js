importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js");


const firebaseConfig = {
    apiKey: "AIzaSyDpcTdung9WwY5AVSLBqq-Nm5WL3-p1j3A",
    authDomain: "todolistnew-d6632.firebaseapp.com",
    projectId: "todolistnew-d6632",
    storageBucket: "todolistnew-d6632.appspot.com",
    messagingSenderId: "547877134146",
    appId: "1:547877134146:web:044c5d2dfef8a9ffd732db",
    measurementId: "G-XM5CQ3HBSV"
  };
firebase.initializeApp({firebaseConfig});

const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
  console.log("onBackgroundMessage", message);
});
const notificationTitle = payload.notification.title;
    const notificationOptions = {
      body: payload.notification.body,
    };

    self.registration.showNotification(notificationTitle,
      notificationOptions);
  