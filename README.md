# Description

- Using Nginx for create a gateway between microservices
- The microservices are simple example web pages
- The code it's functional and testing in windows 10 x64 with Docker Desktop

# Descripción de los archivos
    .
    |-- docs/                                        # Documentations
    |   |-- photos/                                  # Screenshots for running system
    |   |-- Software-Architecture/                   # Context Diagram from solution
    |-- ms_auth/                                     # Microservice
    |   |-- Dockerfile                               # Instructions to build container
    |   |-- index.html                               # Simple web page
    |-- ms_gateway                                   # Microservice
    |   |-- includes/                                # Librerias/Clases/Funciones/Constantes/Mensajes de plataforma
    |   |   |-- nginx_directives.conf                # Nginx Core & Proxy Directives
    |   |-- default.conf                             # Nginx config
    |   |-- Dockerfile                               # Instructions to build container
    |   |-- index.html                               # Simple web page
    |-- ms_publication                               # Microservice
    |   |-- Dockerfile                               # Instructions to build container
    |   |-- index.html                               # Simple web page
    |-- docker-00-variables.ps1                      # variables to be used in the powershell console
    |-- docker-01-create-network-for-dns-shared.ps1  # Create network for containers
    |-- docker-21-build-run-ms_auth.ps1.ps1          # Build image + Run Container + View the logs container for troubleshootings the nginx service
    |-- docker-22-build-run-ms_publication.ps1       # Build image + Run Container + View the logs container for troubleshootings the nginx service
    |-- docker-40-build-run-ms_gateway.ps1           # Build image + Run Container + View the logs container for troubleshootings the nginx service
    |-- docker-90-commands-troubleshootings.ps1      # Several commands
    |-- README.md                                    # Readme file
    
# Docker Desktop

```console
System Operative: Windows 10 x64
Install Docker Desktop + WSL2
```

# Context Diagram
![Alt text](/docs/photos/SoftwareArchitecture/Context_Diagram.png?raw=true)

# Create Virtual Network for Docker
![Alt text](/docs/photos/01.Create-Network/Screenshot_1.png?raw=true)
![Alt text](/docs/photos/01.Create-Network/Screenshot_2.png?raw=true)

# Create Microservices examples and View Logs Container
![Alt text](/docs/photos/02.Create-Microservice-View-Logs-Container/Screenshot_1.png?raw=true)
![Alt text](/docs/photos/02.Create-Microservice-View-Logs-Container/Screenshot_2.png?raw=true)
![Alt text](/docs/photos/02.Create-Microservice-View-Logs-Container/Screenshot_3.png?raw=true)
![Alt text](/docs/photos/02.Create-Microservice-View-Logs-Container/Screenshot_4.png?raw=true)
![Alt text](/docs/photos/02.Create-Microservice-View-Logs-Container/Screenshot_5.png?raw=true)
![Alt text](/docs/photos/02.Create-Microservice-View-Logs-Container/Screenshot_6.png?raw=true)

# Test Web Browser
![Alt text](/docs/photos/03.Test-Web-Browser/Screenshot_1.png?raw=true)
![Alt text](/docs/photos/03.Test-Web-Browser/Screenshot_2.png?raw=true)
![Alt text](/docs/photos/03.Test-Web-Browser/Screenshot_3.png?raw=true)

