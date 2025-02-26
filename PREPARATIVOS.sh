cd C:\ruta\a\tu\proyecto
cd C:\Users\abela\DropBox\web\web25-011-master-app-1

#SI ESTAS EN POWERSHELL
#Verifica la política actual:
Get-ExecutionPolicy

#Si la política actual no es "RemoteSigned", cambiala a "RemoteSigned" NECESITAS PERMISOS DE ADMINISTRADOR
Set-ExecutionPolicy RemoteSigned

#para permitir permisos de ejecución de forma temporal
Set-ExecutionPolicy Unrestricted -Scope Process
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned



#crear entorno virtual
python -m venv nombre_del_entorno
python -m venv web25011


#activar el entorno virtual
nombre_del_entorno\Scripts\activate
.\web25011\Scripts\activate

#desactivar el entorno virtual
deactivate

#O usa el ejecutable de Python del entorno:
.\web25011\Scripts\python.exe

#Instalar dependencias (flask, python-dotenv)
pip install python-dotenv
pip install flask

#Crear un archivo nuevo, como un .env:
New-Item -Name ".env" -ItemType File


#Prueba final: Ejecutar la aplicación en modo debug para ver errores detallados:

flask run --debug


#Comando para verificar el estado de UFW:

sudo ufw status

#Permitir conexiones al puerto 3306:
#Para mayor seguridad, es mejor permitir el acceso solo desde la IP de tu máquina local en lugar de abrir el puerto a todo el internet. Usa este comando:

sudo ufw allow from <tu_ip_local> to any port 3306

sudo ufw allow from 189.157.7.49 to any port 3306
#Reemplaza <tu_ip_local> con la dirección IP de tu máquina local (puedes verla ejecutando curl ifconfig.me desde tu máquina o consultando tu red).

#Si necesitas permitir conexiones desde cualquier IP (menos seguro):
sudo ufw allow 3306/tcp

#Recargar UFW para aplicar los cambios:
sudo ufw reload







