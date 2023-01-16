FROM python
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

EXPOSE 5000

CMD [ "flask", "--app", "hello", "run", "--host=0.0.0.0" ]