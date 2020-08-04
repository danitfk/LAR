FROM kalilinux/kali-rolling
COPY . /app/
RUN apt update && apt install python2 -qy
RUN bash /app/dependency_installer.sh
