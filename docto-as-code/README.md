


# Install
* Instalar Python
* Instalar Pandoc
* Instalar Visual Studio Code
  * Instalar el plugin "Markdown Kroki"
  * Instalar el plugin "Markdown All in One"
* Instalar Docker + Docker Compose
* SET ENV KROKI_SERVER=http://localhost:8000
  * windows:
    * [Environment]::SetEnvironmentVariable("KROKI_SERVER", "http://localhost:8000", "Machine")
    * $env:KROKI_SERVER = "http://localhost:8000"
  * Linux:
    * echo "export KROKI_SERVER='http://localhost:8000'" | sudo tee -a /etc/environment
  * MacOS
    * bash -> echo "export KROKI_SERVER='http://localhost:8000'" >> ~/.bash_profile && source ~/.bash_profile
    * ZSH -> echo "export KROKI_SERVER='http://localhost:8000'" >> ~/.zshrc && source ~/.zshrc
* pip install git+https://gitlab.com/myriacore/pandoc-kroki-filter.git


La documentación de C4 la puedes encontrar en: https://github.com/plantuml-stdlib/C4-PlantUML




# Otras herramientas interesantes para revisar
https://docs.asciidoctor.org/diagram-extension/latest/
https://dbdiagram.io/home
https://ivanceras.github.io/svgbob-editor/






# Install Backstage (Proximamente)
* Instalar NodeJs
  * npm install --global yarn
* npx @backstage/create-app@latest
  * cd my-backstage-app
  * yarn dev
