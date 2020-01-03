# TFM - Máster Ciencia de datos
Estudio del conjunto de datos NHANES mediante el empleo de técnicas de aprendizaje no supervisado.

## Descripción de los ficheros

- **src/SAS/import_xpt.sas**: Importa los archivos seleccionados de NHANES.
- **src/SAS/attribute_sel.sas**: Selección de los atributos necesarios.
- **src/SAS/export_xpt.sas**: Exporta a csv los datos recolectados.
- **src/data_prep/data_understanding.ipynb**: Código necesario para la preparación, análisis y tranformación de los datos para los modelos.
- **src/model/hac_model.ipynb**: Modelo de agrupamiento jerárquico aglomerativo.
- **src/model/DBSCAN.ipynb**:Modelo de agrupamiento basado en densidad.
- **src/model/log_reg.ipynb**:Modelo de regresión logística.
- **src/webapp/**: En esta carpeta se encuentra el código necesario para el despliegue de la aplicación web que incluye el medelo de clasificación.
