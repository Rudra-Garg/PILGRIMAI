# Pilgrim AI Website 

This repository contains the source code for the Pilgrim AI website, a Flask-based web application that provides a platform for the AI-powered mental health chatbot.

-----

## Showcase

<p align="center">
  <img src="../media/website-demo.gif" width="1000" alt="website demo gif">
</p>

-----

## 🛠️ Technology Stack

  * **Backend:** Flask
  * **Language:** Python
  * **Hosting:** Google App Engine
  * **AI/ML:** Google Cloud Vertex AI

-----

## ⚙️ Getting Started (Running Locally)

Follow these steps to set up and run the project on your local machine for development and testing.

### **1. Prerequisites**

  * Python 3.x installed on your system.
  * Access to the project's Google Cloud console.

### **2. Clone the Repository**

First, clone the repository to your local machine.

```bash
git clone https://github.com/Rudra-Garg/PILGRIMAI.git
cd PILGRIMAI
```

### **3. Install Dependencies**

Install all the required Python packages listed in the `requirements.txt` file.

```bash
pip install -r requirements.txt
```

### **4. Set Up Google Cloud Authentication**

To make calls to the Vertex AI service, you need to authenticate your local environment.

  * **Install the Google Cloud SDK** if you haven't already.
  * **Log in to your Google account:**
    ```bash
    gcloud auth login
    ```
  * **Set up Application Default Credentials:**
    ```bash
    gcloud auth application-default login
    ```

### **5. Run the Flask App**

Start the Flask development server with the following command:

```bash
flask run
```

Once running, you can access the website by visiting **[http://127.0.0.1:5000](https://www.google.com/search?q=http://127.0.0.1:5000)** in your web browser.

-----

## ⚠️ Important: Deprecation Warning

Please be aware that the **Vertex AI methods** used in this project have been **deprecated by Google**. For the application to function correctly in the future, these API calls will need to be updated to the latest versions of the Google Cloud Vertex AI SDK.
