FROM python
 
ADD . /app
WORKDIR /app
COPY requirement.txt .
RUN pip install --upgrade pip
RUN pip install -r requirement.txt
COPY . .
EXPOSE 5001
 
CMD ["python", "app.py"]
