from .base import *

SECRET_KEY = env(
    'DJANGO_SECRET_KEY',
    default='@vl!1j63w9h6531v*2)l!=9!nv58=%+_kp3roh%0&jcs*8wmvd'
)

DEBUG = env.bool('DJANGO_DEBUG', default=True)
