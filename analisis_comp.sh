cd sonarqube/bin/linux-x86-64
echo -e "Iniciando SonarQube"
./sonar.sh start
cd ../../../
echo -e " "
echo -e " "

cd app
echo -e "Analisis de la Aplicacion-Web con SonarQube"
sonar-scanner \
  -Dsonar.projectKey=easybuggy \
  -Dsonar.sources=src \
  -Dsonar.host.url=http://localhost:9000 
echo -e "Analisis de la Aplicacion-Web con SonarQube finalizado"
xdg-open http://localhost:9000/dashboard/index/org.sonarqube:php-ut-sq-scanner
echo -e " "
echo -e " "