# HTTPDDocker
Includes Dockerfile for HTTPD conatiner
# Observations
+ Used "docker build -t my-httpd-image ." to build image from docker file then ran command "docker run -v my_volume:/usr/local/apache2/htdocs -p 8081:80 my-httpd-image" to build container and attach my_volume to path /usr/local/apache2/htdocs
+ Default page at http://localhost/8081 is not accessible in either browser or postman because it includes the index.html file
  - __Logs__
    - ![image](https://github.com/MuhammadAli68/HTTPDDocker/assets/57432644/1926ce08-6a8a-46a6-ae0c-dc041e3ab50e)
  - __Browser__
    - ![image](https://github.com/MuhammadAli68/HTTPDDocker/assets/57432644/1d5b5c76-7e0e-4917-bcb9-c33ed8feebea)
  - __Postman__
    - ![image](https://github.com/MuhammadAli68/HTTPDDocker/assets/57432644/cd148835-c46b-49bc-9487-bd5264290677)
+ Used command "docker cp C:\Users\M.Ali\Desktop\about.html gracious_poitras:/usr/local/apache2/htdocs" to copy about.html to /usr/local/apache2/htdocs path of container
  - __Output__
    - ![image](https://github.com/MuhammadAli68/HTTPDDocker/assets/57432644/74afa2b8-8a3e-4ba0-a45e-08871f8bad7e)
+ about.html page becomes accessible on http://localhost:8081/about.html
  - __Browser__
    - ![image](https://github.com/MuhammadAli68/HTTPDDocker/assets/57432644/3e1ffa64-bba2-4eaa-8ae6-8a026083d079)
  - __Postman__
    - ![image](https://github.com/MuhammadAli68/HTTPDDocker/assets/57432644/9c7629f0-b013-4b1b-9cf0-0b166c2da06c)
+ Executed commad "docker rm -f gracious_poitras" to force stop and remove httpd container
  - __Output__
    - ![image](https://github.com/MuhammadAli68/HTTPDDocker/assets/57432644/a422adaf-f74b-47d7-b609-800a411f86ff)
+ my_volume continues to hold index.html and about.html after container removal
  - ![image](https://github.com/MuhammadAli68/HTTPDDocker/assets/57432644/9a303a75-ab8e-4fdf-b5d9-54764aa0414c)
+ Used command "docker volume rm my_volume" to remove volume
  - __Output__
    - ![image](https://github.com/MuhammadAli68/HTTPDDocker/assets/57432644/1478c495-b437-4209-9d20-4c313944a624)



