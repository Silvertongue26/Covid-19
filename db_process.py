#!/usr/bin/env python3
import datetime as dt
import numpy as np
import pandas as pd

total = pd.read_csv('seleccion_total.csv')
data = pd.read_csv('defunciones.csv')

#% DE DEFUNCION
total_decesos = len(data)
total_registros = len(total)
#print(total_registros)
print("Tasa de mortalidad: ", round(((total_decesos*100)/total_registros),2))


#DEFUNCIONES

data['FECHA_SINTOMAS'] =  pd.to_datetime(data['FECHA_SINTOMAS'], format='%Y-%m-%d')
data['FECHA_DEF'] =  pd.to_datetime(data['FECHA_DEF'], format='%Y-%m-%d')
result = (data['FECHA_DEF'] - data['FECHA_SINTOMAS']).dt.days
prom = sum(result)/len(result)
print("Los dias en promedio para defuncion despues de haber presentado sintomas son: ", round(prom,2))