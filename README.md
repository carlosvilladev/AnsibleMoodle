# AnsibleMoodle

### Crear Imágenes
Para crear las imágenes se ejecuta el comando **./createImages.sh** dentro de la carpeta **ansible000** 

### Crear Máquinas
Para crear las máquinas se ejecuta el comando **./create_dockers.sh** dentro de la carpeta **ansible002**

### Agregar llaves y permisos
Para crear las máquinas se ejecuta el comando **./clean_all.sh** dentro de la carpeta **ansible002**

### Ejecutar Playbook
En este comando se importan todos los playbooks y se ejecutan para la creación de todo el entorno Moodle

**ansible-playbook -i ../hosts all.yml**

