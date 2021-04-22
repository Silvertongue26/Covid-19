curl http://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip --output datos_abiertos_covid19.zip
unzip -o datos_abiertos_covid19.zip
csvcut -c 3,6,8,9,10,11,12,13,16,21,30,36 *.csv > output_data/seleccion_total.csv
cd output_data
csvgrep -i -c FECHA_DEF -m "9999-99-99" seleccion_total.csv > defunciones.csv
#csvgrep -c FECHA_DEF -m "9999-99-99" seleccion_total.csv > recuperaciones.csv
pip3 install DateTime
dos2unix db_process.py
./db_process.py > resultado.txt
exit