#Importing Libraries
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, confusion_matrix, classification_report
import pickle

#Load and pre-proccess data
df = pd.read_csv('iris.csv')


#Split data into features and target
X = df.loc[:, df.columns != 'species']
y = df['species']


#Split data into train and test
X_train, X_test, y_train, y_test = train_test_split(X, y,test_size=0.25)


#Model creation
#create object of RandomForestClassifier 
model = RandomForestClassifier()

#Training
#train model
model.fit(X_train, y_train)
#print score
model.score(X_train,y_train)


#Prediction
#predict X_test data
predictions = model.predict(X_test)


#Scoring
print(accuracy_score(y_test, predictions))
print(confusion_matrix(y_test, predictions))
print(classification_report(y_test, predictions))


#Saving model
pickle.dump(model, open('model.pkl','wb'))

#Load trained model
model = pickle.load(open('model.pkl','rb'))
