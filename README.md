# ETL Acciones

Este proyecto consiste en la estracción de datos sobre distintas acciones del mercado consultando la API de Alpha Vantage.

## Descripción

El proyecto está compuesto por un script que se encarga de conectarse a la API DE Alpha Vantage, para lo que se requiere crear un usuario y obtener una apikey. En el script hay un listado de las acciones que se quieren buscar: `["AMZN", "IBM", "GOOGL", "KO", "MSFT", "NFLX", "TSLA"]`. Para cada una de ellas se llamará a la API especificando la acción.  
Para cada especie se obtiene la última fecha de actualización y los valores "open", "high", "low", "close" y "volume".  
Finalmente se cargan los resultados obtenido en una tabla de Redshift.

## Requisitos

1. **Python:**
   - Tener cualquier version de Python 3.6 en adelante.

2. **Alpha Vantage:**
   - Crear un usuario en Alpha Vantage para obtener la apikey.

3. **Redshift:**
   - Tener una base de datos creada en Redshift.

4. **Archivo `config.json`:**
   - Completar el archivo `config.json` con el siguiente formato:

     ```json
   {
      "DB_HOST": "host",
      "DB_PORT": "port",
      "DB_DATABASE": "database",
      "DB_USERNAME": "username",
      "DB_PASSWORD": "password",
      "API_KEY": "apikey"
   }
     ```

5. **Librerías de Python:**
   - Tener instaladas las siguientes librerías en Python:
     - `pandas`
     - `psycopg2`
     - `sqlalchemy`
