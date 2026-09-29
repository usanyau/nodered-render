FROM nodered/node-red:latest

# ย้ายไปโฟลเดอร์ทำงานของ Node-RED
USER root
WORKDIR /data

# ติดตั้งปลั๊กอิน PostgreSQL และ MQTT ล่วงหน้าเพื่อความปลอดภัย
RUN npm install node-red-contrib-postgresql node-red-dashboard

USER node-red
