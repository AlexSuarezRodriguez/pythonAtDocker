FROM python:3.8-slim-buster
RUN apt update -y
WORKDIR /app
COPY ./requirements.txt .
RUN python -m pip install --upgrade pip
ENV PIP_ROOT_USER_ACTION=ignore
RUN python -m pip install -r requirements.txt
CMD "tail" "-f" "/dev/null"
