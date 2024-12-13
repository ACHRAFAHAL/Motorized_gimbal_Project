# Motorized_gimbal_Project

Motorized 3-axis gimbal using Arduino! This project stabilizes cameras with gyroscopic sensors and servomotors for smooth footage.


## Project Overview:
The project is a gimbal system created using an Arduino platform to stabilize a mounted payload (camera) and maintain its orientation. The gimbal compensates for external movements, ensuring smooth, stable footage or data collection.

## Components Used:
Arduino NANO board

MPU6050 IMU sensors (Accelerometer and Gyroscope) for motion detection

Motors (servomotors: MG996R) for controlling the pitch, yaw, and roll axes

Power supply (battery)

Lm2596 DC-DC regulator

## circuit :
![image](https://github.com/user-attachments/assets/afaf3914-628d-4651-ab55-0aba4a27d40f)

## Key Features:
Uses combined accelerometer and gyroscope data for stable orientation estimation. Adjusts motor positions based on feedback from the IMU sensors to stabilize the payload. Real-time sensor data processing ensures smooth stabilization with minimal delay.

## Challenges & Solutions:
Sensor Calibration: Ensured proper calibration of the MPU6050 for accurate readings.
Angle estimation : Eliminating the drift and noise of the estimated angles signal.
Motor Control: Fine-tuned motor response to avoid overshooting and ensure precise stabilization.

