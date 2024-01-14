# Flask App Tutorial

This tutorial will guide you on how to run a Flask app.

## Prerequisites

Before getting started, make sure you have the following installed on your machine:

- Python (version 3.6 or higher)
- Flask (install using `pip install flask`)
- Google Cloud SDK (gcloud) (install using the instructions provided by Google Cloud)

## Warning
```bash
this tutorial helps you run it locally , and  is not complete yet, u need to setup gcloud with your google account and project id and have api key for vertex ai, then modify the code to use your api key and project id in main.py, You can google this part.
```
## Google Cloud App Setup

To install and create a default login in Google Cloud (gcloud) app, follow these steps:

1. Install the Google Cloud SDK (gcloud) by following the instructions provided by Google Cloud.

2. Authenticate with Google Cloud by running the following command and following the on-screen instructions:

    ```bash
    gcloud auth login
    ```

3. Set default login in gcloud cli by running the following command and following the on-screen instructions:

    ```bash
    gcloud auth application-default login
    ```
## Getting Started

1. Clone the repository to your local machine:

    ```bash
    git clone <repository-url>
    ```

2. Navigate to the project directory:

    ```bash
    cd <project-directory>
    ```

3. Install the required dependencies:

    ```bash
    pip install -r requirements.txt
    ```

4. Run the Flask app:

    ```bash
    python main.py
    ```

5. Open your web browser and visit `http://localhost:5000` to see the app in action.

