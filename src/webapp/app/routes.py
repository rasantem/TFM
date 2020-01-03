from flask import render_template, flash, redirect, url_for
from app import app
from app.forms import inputdataForm
import pickle
import numpy as np

#Classificador
clf = pickle.load(open('model.pkl', 'rb'))

@app.route('/')
@app.route('/index', methods=['GET', 'POST'])
def index():
    # Manual y descripción de clusters
    apli = {'Desc': 'Aplicación para la clasificación de individuos según sus características.'}
    manual = {'man': 'Esta aplicación realiza la clasificación de individuos según datos introducidos en el formulario en los clusters que se describen a continuación según su similitud. A través del menú superior (Clasificar usuario) introduzca los datos del individuo y pulse el boton clasificar. A continuación obtendrá el número de cluster asignado en la parte inferior de la pantalla.'}
    descs = [
        {
            'cluster': {'clust': '1'},
            'desc': 'Este cluster está formado en su mayoria por personas con vivienda habitual en alquiler con una media de 4,5 habitaciones. La media de edad de edad se sitúa en 46 años. Usan ligeramente más el ordenador y menos la televisión. La tasa de fumadores es mayor y tienen un nivel de estudios ligeramente inferior que el cluster 2.'
        },
        {
            'cluster': {'clust': '2'},
            'desc': 'Este cluster está formado en su mayoria por personas con vivienda habitual en propiedad con una media de 6,5 habitaciones. La media de edad de edad se sitúa en 56 años. Usan ligeramente más la televisión y menos el ordenador. La tasa de fumadores es menor y tienen un nivel de estudios ligeramente superior al cluster 1. '
        }
    ]
    return render_template('index.html', title='Clasificación', apli=apli, descs=descs, manual=manual)

@app.route('/inputdata', methods=['GET', 'POST'])
def inputdata():
    form = inputdataForm()

    if form.validate_on_submit():
        # Recopilar características del formulario
        features = []
        features.append(form.bmi.data)
        features.append(form.waist.data)
        features.append(form.bpx.data)
        features.append(float(form.diq.data))
        features.append(form.lbxglu.data)
        features.append(form.lbxin.data)
        features.append(float(form.hiq.data))
        features.append(float(form.hod.data))
        features.append(float(form.hoq.data))
        features.append(float(form.hsd.data))
        features.append(float(form.inq.data))
        features.append(float(form.mcq.data))
        features.append(float(form.mcq3.data))
        features.append(float(form.paq650.data))
        features.append(float(form.paq665.data))
        features.append(float(form.paq710.data))
        features.append(float(form.paq715.data))
        features.append(float(form.rhq.data))
        features.append(float(form.sld.data))
        features.append(float(form.smq.data))
        features.append(float(form.riag.data))
        features.append(float(form.rida.data))
        features.append(float(form.rid.data))
        features.append(float(form.dmd.data))
        final_features = [np.array(features)]

        #Predicción regresión logística
        y = clf.predict(final_features)

        return render_template('inputdata.html', title='Resultado', form=form, prediction_text=y)
    return render_template('inputdata.html', title='Intro de datos', form=form)
