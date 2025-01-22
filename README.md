# Motorized_gimbal_Project

Motorized 3-axis gimbal using Arduino! This project stabilizes cameras with gyroscopic sensors and servomotors for smooth footage.


## Project Overview:
The project is a gimbal system created using an Arduino platform to stabilize a mounted payload (camera) and maintain its orientation. The gimbal compensates for external movements, ensuring smooth, stable footage or data collection.
![image]([https://github.com/user-attachments/assets/afaf3914-628d-4651-ab55-0aba4a27d40f](https://github.com/ACHRAFAHAL/Motorized_gimbal_Project/blob/main/sysml/Use%20case%20diagram.png))
![image]([https://github.com/user-attachments/assets/afaf3914-628d-4651-ab55-0aba4a27d40f](https://github.com/ACHRAFAHAL/Motorized_gimbal_Project/blob/main/sysml/req%20diagram.png))
## Components Used:
![image]([https://github.com/user-attachments/assets/afaf3914-628d-4651-ab55-0aba4a27d40f](https://github.com/ACHRAFAHAL/Motorized_gimbal_Project/blob/main/sysml/Block%20Definition%20Diagram.png))

[Arduino NANO board](https://www.amazon.com/LAFVIN-Board-ATmega328P-Micro-Controller-Arduino/dp/B07G99NNXL/ref=sr_1_1?crid=BFC4M23UDME9&dib=eyJ2IjoiMSJ9.6QPRL9EGieCqVheJYNSvYLiNSaIKqAuyrl-iTXMnEEFnoPjKLQRyOFdkdBUTrvQ1zplyvGeIZ4oi-K5SLso7Bxtwd-eY0-WxvNcv7afrlNnAro9WHJALr3apcBQgHmIEP4BiT0vJ5RBpYjB2-KuAmaooARQIQM9z9zOdqVlyO8JsHFVojahkz-pPtvUc0MnzNa09et1eFhPjpCz_RcJxPNiukp_0FndT4OWpmLW0DFA.hxrgePKQpUjJKMrh7PDBkT5qkBD8YoEURtovGlqHnYg&dib_tag=se&keywords=Arduino+Nano&qid=1734113262&sprefix=arduino+nano%2Caps%2C150&sr=8-1)

[MPU6050 IMU sensors](https://www.amazon.com/MPU-6050-MPU6050-Accelerometer-Gyroscope-Converter/dp/B07RXQGGJX/ref=sr_1_1?crid=1WBFIHWIX9E9O&dib=eyJ2IjoiMSJ9.qpoHAAUW3irHLKsdM7PPM2MZnkn2Ky4LIbjEy3lYoAE4VNq5f055TeluR5eez3pAyCkogBSpLSSulXO5LBx30nfklHJlEQImpjh_9Nn_Kc4.4io0oxwgwFCV35505gbzktP1JepM0GuqvK9yyngXyXQ&dib_tag=se&keywords=mpu%2B6050%2Bimu&qid=1734120841&sprefix=mpu%2B605%2Caps%2C194&sr=8-1&th=1) (Accelerometer and Gyroscope) for motion detection

Motors ([servomotors: MG996R](https://www.amazon.com/MG996R-Digital-Waterproof-Airplane-Helicopter/dp/B0DCK462XZ/ref=sr_1_2_sspa?crid=1U6G61N9NTMDO&dib=eyJ2IjoiMSJ9.QfXk1mJu6aVlwoJY0QIsXu6G8Jv8_S5OY2Yjs1fVDWTeXEOEuIbYV1VThziSUM3acEf8pQhlDGR93L2yarCIGSlBVP0_VhXC9a08G4hbALfphR5lJff04uRDS_tMzK_0HXrNWusqmk6RguY_lYvs_1boC6j2XRwyBEFUSmZoWXjhDwv0gu3YedtIuZD9a8dmzu3LVqCyol22I_1AWl8BaYWofZ_N_FpT-6X4-KwS4FYPgM-rU0r0ZRp2vK5JWZEE-jqQSDsq9q-zW3zXN2N4k6ujsrisu4Flua1rRYXd3-I.lPBBTSSD1Jcp5Nu9Y5Czjo04i5X6-1FHMCHD-apXbUY&dib_tag=se&keywords=mg996r+servo&qid=1734120893&sprefix=MG996R%2Caps%2C138&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1)) for controlling the pitch, yaw, and roll axes

Power supply (battery)

[Lm2596 DC-DC regulator](https://www.amazon.com/Regulator-Adjustable-Converter-Electronic-Stabilizer/dp/B07PDGG84B/ref=sr_1_1_sspa?crid=3RLATQ427Q65W&dib=eyJ2IjoiMSJ9.2tP26Cepnbd1_IHOzEwnU7IwwjrdCSrD4w1kEn-h10k1iQczsbxiiuTGY7nU9RNqzzOq0IGfdK4runR_5FbXSN7kaj__5v63TaRJ-MPXJhmKhdRlgfvIbMh3G7WSYT_JwTidXnWjpFkkekwWypP_ZApfJKDLVB5b1VDevEdJMgkMPk1egPnqlbosI68SnCKpR0wff1gql_051KBDWW-0O02aeZR3nH_Q_CZtGCHI224.9UaTiRgO9skwrv-SMXVCR9fvRTLR7FSUdQcI1zFiTXI&dib_tag=se&keywords=Lm2596+DC-DC+regulator&qid=1734120951&sprefix=lm2596+dc-dc+regulator%2Caps%2C144&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1)

## circuit :
![image](https://github.com/user-attachments/assets/afaf3914-628d-4651-ab55-0aba4a27d40f)

## Key Features:
Uses combined accelerometer and gyroscope data for stable orientation estimation. Adjusts motor positions based on feedback from the IMU sensors to stabilize the payload. Real-time sensor data processing ensures smooth stabilization with minimal delay.

## Challenges & Solutions:
Sensor Calibration: Ensured proper calibration of the MPU6050 for accurate readings.
Angle estimation : Eliminating the drift and noise of the estimated angles signal.
Motor Control: Fine-tuned motor response to avoid overshooting and ensure precise stabilization.

