FROM python
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

CMD [ "flask", "--app", "hello", "run" ]