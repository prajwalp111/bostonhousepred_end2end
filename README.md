# 🏠 Boston House Price Prediction (End-to-End ML Project)

This is a complete **Machine Learning web application** built using
**Flask** that predicts Boston house prices based on various features.\
You can deploy it easily using **Render** or **Docker**.

 Live on : [Render](https://bostonhousepred-end2end.onrender.com/predict)

------------------------------------------------------------------------

## 🚀 Project Overview

-   **Model**: Linear Regression (trained on Boston Housing Dataset)
-   **Frontend**: HTML (via Flask templates)
-   **Backend**: Flask API with Pickle model
-   **Deployment**: Render / Docker supported

------------------------------------------------------------------------

## 📁 Project Structure

    ├── app.py                 # Flask app entry point
    ├── templates/
    │   └── home.html          # Frontend HTML template
    ├── regression.pkl         # Trained regression model
    ├── scaling.pkl            # StandardScaler object
    ├── requirements.txt       # Dependencies
    ├── Dockerfile             # For containerized deployment
    └── README.md              # Project documentation

------------------------------------------------------------------------

## ⚙️ Installation and Setup

### 1️⃣ Create a virtual environment

``` bash
conda create -p venv python==3.9 -y
conda activate venv/
```

### 2️⃣ Install dependencies

``` bash
pip install -r requirements.txt
```

### 3️⃣ Run the Flask app locally

``` bash
python app.py
```

Then open <http://localhost:5000> in your browser.

------------------------------------------------------------------------

## 🐳 Docker Deployment

### Build and run container locally

``` bash
docker build -t bostonhousepred .
docker run -p 5000:5000 bostonhousepred
```

### Dockerfile Used

``` dockerfile
FROM python:3.9-slim
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app
```

------------------------------------------------------------------------

## 🌐 Render Deployment

### 1️⃣ Push your code to GitHub

Make sure your `requirements.txt`, `Dockerfile`, and `app.py` are at the
root of the repo.

### 2️⃣ Create a new Render Web Service

-   Build Command: Leave empty (Render detects Dockerfile automatically)
-   Start Command: `gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app`

### 3️⃣ Add Environment Variables

    PORT = 10000

(Render assigns it automatically, but defining it avoids errors)

------------------------------------------------------------------------

## 🧪 API Testing Example

Use `/predict_api` endpoint with POST request:

``` json
{
  "data": {
    "CRIM": 0.00632,
    "ZN": 18.0,
    "INDUS": 2.31,
    "CHAS": 0,
    "NOX": 0.538,
    "RM": 6.575,
    "AGE": 65.2,
    "DIS": 4.09,
    "RAD": 1,
    "TAX": 296.0,
    "PTRATIO": 15.3,
    "B": 396.90,
    "LSTAT": 4.98
  }
}
```

Response:

``` json
{
  "predicted_price": 24.0
}
```

------------------------------------------------------------------------

## 🧠 Author

**Prajwal Prakash Kumar**\
📧 Contact: [LinkedIn]([https://www.linkedin.com](https://www.linkedin.com/in/prajwal-15969a-/))

------------------------------------------------------------------------

## 🏁 License

This project is open-source under the Apache License.
