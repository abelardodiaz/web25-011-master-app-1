# config.py: Configuración de la aplicación
import os

class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'dev-key-segura'
    DEFAULT_THEME = 'dark'
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://redv6_msqlus:[mo(jQzdXUE7AMCh@158.69.59.205:3306/master001'
    SQLALCHEMY_ENGINE_OPTIONS = {'pool_recycle': 299}
    DB_RESETEADA = True  # Cambiar a False después de la configuración
    
SQLALCHEMY_ENGINE_OPTIONS = {
    'pool_recycle': 299,
    'pool_pre_ping': True  # Para manejar mejor las conexiones
}

