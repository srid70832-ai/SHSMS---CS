# Self-Healing Smart Meter System - Project Overview

## 📍 Project Location
```
C:\Users\sri\shsms
```

## 📁 Project Structure

```
shsms/
├── 📄 README.md                    # Main project documentation
├── 📄 QUICK-START.md               # Quick start guide
├── 📄 DEPLOYMENT.md                # Deployment instructions
├── 📄 ARCHITECTURE.md              # System architecture
│
├── 🔧 firmware/                    # Smart meter firmware (ESP32)
│   ├── src/                        # Source code
│   │   ├── main.cpp               # Main entry point
│   │   ├── sensor_monitor.*       # Sensor reading
│   │   ├── ai_diagnosis.*         # AI fault detection
│   │   ├── self_healing.*         # Auto-repair logic
│   │   └── communication.*        # MQTT/WiFi/Bluetooth
│   └── platformio.ini             # Build configuration
│
├── ☁️ cloud-platform/              # Backend server (Node.js)
│   ├── server.js                   # Main server
│   ├── models/                     # Database models
│   │   └── DigitalTwin.js         # Meter digital twin
│   ├── services/                   # Business logic
│   │   ├── MeterService.js
│   │   ├── AnalyticsService.js
│   │   └── MQTTService.js
│   └── routes/                     # API endpoints
│
├── 🖥️ dashboard/                   # Web dashboard (React)
│   ├── src/
│   │   ├── App.js                 # Main app component
│   │   ├── pages/                 # Dashboard pages
│   │   │   ├── Dashboard.js
│   │   │   ├── Meters.js
│   │   │   ├── Analytics.js
│   │   │   └── Alerts.js
│   │   └── components/            # UI components
│   └── public/                    # Static files
│
├── ⛓️ blockchain/                   # Blockchain service
│   ├── index.js                   # Main service
│   └── services/
│       └── BlockchainService.js
│
├── 🌐 mesh-network/               # Meter-to-meter communication
│   ├── mesh-coordinator.js
│   └── services/
│       ├── MeshNetwork.js
│       └── HealingProtocol.js
│
├── 📱 mobile-app/                  # Field technician app (React Native)
│   ├── App.js
│   └── screens/
│       ├── HomeScreen.js
│       ├── MeterDetailScreen.js
│       └── RepairGuideScreen.js
│
└── 📚 docs/                        # Documentation
    ├── api-documentation.md
    ├── deployment-guide.md
    ├── firmware-development.md
    └── hardware-setup.md
```

## 🚀 Quick Start Commands

### 1. View the Dashboard (Website)

**Terminal 1 - Start Backend:**
```bash
cd C:\Users\sri\shsms\cloud-platform
npm install
npm start
```

**Terminal 2 - Start Dashboard:**
```bash
cd C:\Users\sri\shsms\dashboard
npm install
echo "REACT_APP_API_URL=http://localhost:3000/api" > .env
echo "REACT_APP_WS_URL=http://localhost:3000" >> .env
npm start
```

Then open: **http://localhost:3001**

### 2. Install All Dependencies

```bash
cd C:\Users\sri\shsms
npm install
npm run install-all
```

### 3. Build Firmware

```bash
cd C:\Users\sri\shsms\firmware
pip install platformio
pio run -e esp32-s3
```

## 📋 What's Included

### ✅ Complete System Components

1. **Firmware** - Embedded code for smart meters
   - Sensor monitoring
   - AI diagnosis engine
   - Self-healing logic
   - Dual communication channels

2. **Cloud Platform** - Backend services
   - Digital Twin system
   - AI analytics
   - REST API
   - Real-time WebSocket updates

3. **Dashboard** - Web interface
   - Real-time monitoring
   - Analytics and predictions
   - Alert management
   - Meter details

4. **Blockchain** - Maintenance passport
   - Immutable event logging
   - Service history

5. **Mesh Network** - Cooperative healing
   - Meter-to-meter communication
   - Shared calibration

6. **Mobile App** - Field technician tool
   - Fault viewing
   - Repair guides
   - Spare parts checklist

## 🎯 Key Features

- ✅ Automatic fault detection
- ✅ Self-healing capabilities
- ✅ Predictive failure analysis
- ✅ Real-time monitoring
- ✅ Blockchain audit trail
- ✅ Mobile field app

## 📖 Documentation Files

- **README.md** - Main project overview
- **QUICK-START.md** - Get started quickly
- **DEPLOYMENT.md** - Production deployment
- **ARCHITECTURE.md** - System design
- **docs/** - Detailed guides

## 🔧 Technology Stack

- **Frontend**: React 18, Material-UI
- **Backend**: Node.js, Express, MongoDB
- **Firmware**: ESP32, Arduino, TensorFlow Lite
- **Communication**: MQTT, WebSocket
- **Blockchain**: Ethereum/Polygon/Hyperledger
- **Mobile**: React Native, Expo

## 📞 Next Steps

1. Read **QUICK-START.md** to view the dashboard
2. Check **README.md** for full overview
3. Review **docs/** for detailed guides
4. Customize for your hardware
5. Deploy to production

## 💡 Tips

- Start with the dashboard to see the UI
- Backend needs MongoDB (optional for basic viewing)
- Firmware requires ESP32 hardware
- All components are modular and can run independently

---

**Project Location**: `C:\Users\sri\shsms`
**Status**: ✅ Complete and ready to use

