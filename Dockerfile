FROM django:python2-onbuild

RUN python /usr/src/app/manage.py migrate

WORKDIR /usr/src/app/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]