from joblib import load
from sklearn.tree import DecisionTreeClassifier
import pandas as pd
import os

x_train_path = os.getcwd() + "\\main\\static\\dt_models\\x_train.csv"
y_train_path = os.getcwd() + "\\main\\static\\dt_models\\y_train.csv"
model_path = os.getcwd() + "\\main\\static\\dt_models\\model.joblib"

def load_dataset():
    x_train = pd.read_csv(x_train_path)
    y_train = pd.read_csv(y_train_path)
    return x_train, y_train

def load_model():
    clf = load(model_path)
    return clf

def load_dt_model():
    DT_model = DecisionTreeClassifier(criterion = 'entropy')
    return DT_model

def predict(nilai):
    sample_data = [nilai]
    x_train = load_dataset()[0]
    y_train = load_dataset()[1]
    clf = load_model()
    model = load_dt_model()
    model.fit(x_train, y_train)
    hasil_predict = clf.predict(sample_data)
    return hasil_predict
