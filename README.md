# Self-Healing Smart Meter System (SHSMS)

A comprehensive IoT system that enables smart meters to automatically detect, diagnose, and repair faults without human intervention.

## 🏗️ Architecture Overview

The SHSMS consists of 6 main phases:

1. **Hardware Design** - Sensors, microcontroller, dual communication channels
2. **Firmware & Embedded Intelligence** - On-device AI diagnosis and self-healing logic
3. **Cloud Platform** - Digital Twin system and AI analytics
4. **Blockchain Maintenance Passport** - Immutable ledger for meter events
5. **Healing Mesh Network** - Meter-to-meter cooperative communication
6. **User Interface** - Utility dashboard and field technician mobile app

## 📁 Project Structure

```
shsms/
├── firmware/              # Embedded code for smart meters
├── cloud-platform/        # Cloud services and Digital Twin
├── blockchain/            # Blockchain integration for maintenance logs
├── mesh-network/          # Meter-to-meter communication
├── dashboard/             # Utility control dashboard
├── mobile-app/            # Field technician mobile app
└── docs/                  # Documentation
```

## 🚀 Quick Start

### Prerequisites

- Node.js 18+
- Python 3.9+
- Docker (for blockchain and services)
- ESP32 development tools (for firmware)

### Installation

See individual component READMEs for detailed setup instructions.

## 🔧 Components

### 1. Firmware (`/firmware`)
- Sensor monitoring (temperature, voltage, current)
- AI diagnosis engine (TensorFlow Lite Micro)
- Self-healing logic (auto-repair, recalibration, rollback)

### 2. Cloud Platform (`/cloud-platform`)
- Digital Twin system (AWS IoT TwinMaker compatible)
- AI analytics and prediction
- MQTT broker integration

### 3. Blockchain (`/blockchain`)
- Hyperledger Fabric integration
- Maintenance event logging
- Tamper-proof audit trail

### 4. Mesh Network (`/mesh-network`)
- Bluetooth Mesh / Zigbee implementation
- Cooperative healing protocols

### 5. Dashboard (`/dashboard`)
- React frontend
- Node.js backend
- Real-time monitoring

### 6. Mobile App (`/mobile-app`)
- React Native application
- Field technician tools
- Fault diagnosis and repair guides

## 📖 Documentation

- [Hardware Setup Guide](docs/hardware-setup.md)
- [Firmware Development](docs/firmware-development.md)
- [Cloud Deployment](docs/cloud-deployment.md)
- [API Documentation](docs/api-documentation.md)

## 🤝 Contributing

This is a reference implementation. Customize for your specific hardware and requirements.

## 📄 License

MIT License

link:http://localhost:3002/

