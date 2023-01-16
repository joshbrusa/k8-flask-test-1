FROM python
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

# CMD [ "flask", "--app", "hello", "run" ]
CMD [ "flask", "--app", "hello", "run", "--host=0.0.0.0", "--port=80" ]