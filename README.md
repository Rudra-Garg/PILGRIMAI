[Click here](https://pilgrimai.vercel.app) to watch it in action.

# Pilgrim

Welcome to the Pilgrim project repository!

## Overview

Pilgrim is an AI-powered chatbot designed to provide accessible and stigma-free mental health support. With Pilgrim, users can access confidential and personalized assistance from a virtual psychiatrist anytime, anywhere. By breaking down barriers to seeking help, Pilgrim aims to make mental health support more accessible and inclusive for all.

## App

The `App` folder contains the code for the Pilgrim mobile application. Built with Flutter, the Pilgrim app provides users with a convenient way to access Pilgrim on their mobile devices.

## Website

The `Website` folder contains the code for the Pilgrim website. The website is built using a Flask backend and hosted on Google App Engine. It offers users another platform to access the Pilgrim and seek support.

## Getting Started

To get started with Pilgrim, follow these steps:

1. Clone this repository to your local machine.
2. Navigate to the `App` folder to work with the mobile application code, or navigate to the `Website` folder to work with the website code.

## How to Run the Flutter App:

To run the Pilgrim mobile application, follow these steps:

1. Ensure you have Flutter installed on your system. If not, you can follow the instructions on the [Flutter website](https://flutter.dev/docs/get-started/install) to install it.

2. Navigate to the `App` folder in your terminal or command prompt.

3. Run the following command to ensure all dependencies are installed:
  ```
    flutter pub get
  ```

4. Once the dependencies are installed, you can launch the app on an emulator or a connected device by running:
  ```
    flutter run
  ```


This command will build and launch the Pilgrim mobile application on your emulator or device.

5. Alternatively, you can build the app for specific platforms (e.g., Android or iOS) using the following commands:

- For Android:

  ```
  flutter build apk
  ```

- For iOS:

  ```
  flutter build ios
  ```

After building, you can install the app on your device manually or using the appropriate deployment method for each platform.

## How to Run the Flask Website:

You can access the wibsite here: [Pilgrimai.live](https://pilgrimai.live)

To run the Pilgrim website, follow these steps:

1. Ensure you have Python and Flask installed on your system. If not, you can install Flask and other required dependencies using pip:
  ```
  pip install -r requirements.txt
  ```
This command will install all the required dependencies listed in the `requirements.txt` file.

2. Navigate to the `Website` folder in your terminal or command prompt.

3. Run the following command to start the Flask development server:

   ```
   flask run
   ```

   This command will start the Flask server, and you can access the website by visiting `http://localhost:5000` in your web browser.

4. Alternatively, you can deploy the Flask website to a production server following the deployment instructions provided in the Flask documentation.

## Adding Application Defaults for Google Cloud Platform (Vertex AI):

If you plan to run the Pilgrim website locally, you'll need to set up application-default credentials. Follow these steps to add application-default credentials:

1. Install the Google Cloud SDK if you haven't already. You can download it from the [Google Cloud SDK Documentation](https://cloud.google.com/sdk/docs/install).

2. Authenticate the Google Cloud SDK by running the following command and following the authentication prompts:

   ```
   gcloud auth application-default login
   ```

3. After successful authentication, application-default credentials will be added to your environment, and you'll be able to make calls to Vertex AI services from the Pilgrim website.



