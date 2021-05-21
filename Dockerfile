FROM python
LABEL maintainer="juan"
EXPOSE 5000
ENV MONGO_URI=mongodb://mongo-db:27017/todos
WORKDIR /usr/src/app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
CMD ["python","app.py"]