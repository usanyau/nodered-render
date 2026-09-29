FROM nodered/node-red:latest

# ย้ายไปโฟลเดอร์ทำงานของ Node-RED
USER root
WORKDIR /data

# ติดตั้งปลั๊กอิน PostgreSQL และ Dashboard
RUN npm install node-red-contrib-postgresql node-red-dashboard

# 🌟 เพิ่มบรรทัดนี้: คืนสิทธิ์การเขียน/อ่านไฟล์ใน /data ให้กับยูสเซอร์ node-red
RUN chown -R node-red:node-red /data

USER node-red
