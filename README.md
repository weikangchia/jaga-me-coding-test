# Jaga-Me Coding Test

## Introduction
This is a project to build a customer portal that allows families of patients to hire freelance qualified nurses on-demand. The customer portal allows user to access and manage relevant information pertaining to their service. The functionalities include:
1. Basic user authentication (login/logout)
2. View history of appointments
3. View history of payments
4. Manage user profile.
5. Manage patient profile.

## UI Framework
This project uses a fully responsive admin template called **[AdminLTE](https://almsaeedstudio.com)**. It is based on **[Bootstrap 3](https://github.com/twbs/bootstrap)** framework. Highly customizable and easy to use.

**Download & Preview on [Almsaeed Studio](https://almsaeedstudio.com)**

### Installation
There are multiple ways to install AdminLTE.

#### Download:

Download from Github or [visit Almsaeed Studio](https://almsaeedstudio.com) and download the latest release.

#### Using The Command Line:

**Github**

- Fork the repository ([here is the guide](https://help.github.com/articles/fork-a-repo/)).
- Clone to your machine
```
git clone https://github.com/YOUR_USERNAME/AdminLTE.git
```

**Bower**

```
bower install admin-lte
```

**npm**

```
npm install --save admin-lte
```

**Composer**

```
composer require "almasaeed2010/adminlte=~2.0"
```

### Documentation
Visit the [online documentation](https://almsaeedstudio.com/themes/AdminLTE/documentation/index.html) for the most
updated guide. Information will be added on a weekly basis.

### Browser Support
- IE 9+
- Firefox (latest)
- Chrome (latest)
- Safari (latest)
- Opera (latest)

## Deploying to Firebase

1. Log into Firebase and go to [https://console.firebase.google.com/](https://console.firebase.google.com/).
2. Go select `Create New Project`.
3. Install Firebase CLI via NPM. Go to console and run `npm install -g firebase-tools`.
4. Once installed, run `firebase login` to login to your Firebase account.

### Setting up deployment
1. Go to the root of your Angular CLI project and run `firebase init`. This will walk you through a series of steps for setting up your app to be deployable to Firebase Hosting.
2. Select the Hosting option in the command line.
3. Select your project name that you have created earlier.
4. Use default Firebase real time database rules.
5. Choose `dist/` as the public directory instead of the default `public/` directory.
6. Select <b>yes</b> to rewrite all urls to `index.html`.
7. Select <b>no</b> to overwrite the `index.html` file.

Now you are ready to deploy your app. In the root of your app, you should have a new file `firebase.json` file created. This file lets the Firebase CLI knows how to deploy your application.

Run `firebase deploy` to deploy your app.
