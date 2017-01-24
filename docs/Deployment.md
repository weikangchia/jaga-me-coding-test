# Deploying to Firebase

1. Log into Firebase and go to [https://console.firebase.google.com/](https://console.firebase.google.com/).
2. Go select `Create New Project`.
3. Install Firebase CLI via NPM. Go to console and run `npm install -g firebase-tools`.
4. Once installed, run `firebase login` to login to your Firebase account.

## Setting up deployment
1. Go to the root of your Angular CLI project and run `firebase init`. This will walk you through a series of steps for setting up your app to be deployable to Firebase Hosting.
2. Select the Hosting option in the command line.
3. Select your project name that you have created earlier.
4. Use default Firebase real time database rules.
5. Choose `.` as the public directory instead of the default `public/` directory.
6. Select <b>yes</b> to rewrite all urls to `index.html`.
7. Select <b>no</b> to overwrite the `index.html` file.

Now you are ready to deploy your app. In the root of your app, you should have a new file `firebase.json` file created. This file lets the Firebase CLI knows how to deploy your application.

Run `firebase deploy` to deploy your app.
