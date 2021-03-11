FROM nginx
RUN apt-get update
RUN apt-get install -y snapd
RUN service snapd.service start
RUN snap install core
RUN snap refresh core
RUN apt-get remove -y certbot
RUN snap install --classic certbot
RUN ln -s /snap/bin/certbot /usr/bin/certbot
RUN sudo certbot --nginx

