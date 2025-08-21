# পাইথনের একটি হালকা ইমেজ ব্যবহার করছি
FROM python:3.9-slim

# অ্যাপের জন্য একটি ফোল্ডার তৈরি করছি
WORKDIR /app

# প্রয়োজনীয় প্যাকেজগুলো ইনস্টল করছি
COPY requirements.txt .
RUN pip install -r requirements.txt

# অ্যাপের কোড কপি করছি
COPY . .

# পোর্ট ওপেন করছি
EXPOSE 5000

# অ্যাপটি চালু করার কমান্ড দিচ্ছি
CMD ["python", "app.py"]