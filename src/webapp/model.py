#Imports
import pandas as pd
import numpy as np
import pickle

from sklearn.linear_model import LogisticRegression

#from sklearn import metrics
#from sklearn.model_selection import train_test_split

# Carga de datos etiquetados
nhanesDF = pd.read_csv('nhanesDf_l.csv',sep=',', index_col=[0])
nhanesDF.shape

# Split datos
X = nhanesDF.loc[:, 'BMXBMI':'DMDEDUC2']
y = nhanesDF['CLUSTER']

#train, test = train_test_split(nhanesDF, test_size=0.2, random_state=0)
#X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=0)
#X_test.shape, y_test.shape

lr = LogisticRegression()
lr.fit(X, y)

#Serialización modelo
pickle.dump(lr, open('model.pkl','wb'))
