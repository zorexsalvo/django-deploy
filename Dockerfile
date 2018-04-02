FROM python:3.6.2

LABEL maintainer="Zorex Salvo <zorexsalvo@gmail.com>"
ENV PYTHONUNBUFFERED=1

RUN apt-get -y update && \
    pip install --upgrade pip


RUN mkdir /app
WORKDIR /app

ARG CONFIG_ENVIRONMENT
ENV CONFIG_ENVIRONMENT ${CONFIG_ENVIRONMENT}

COPY requirements/ requirements/
RUN ls
RUN pip install -r requirements/$CONFIG_ENVIRONMENT.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
