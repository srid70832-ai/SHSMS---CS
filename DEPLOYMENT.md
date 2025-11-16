# Quick Deployment Guide

Quick start guide for deploying the Self-Healing Smart Meter System.

## Prerequisites Checklist

- [ ] Node.js 18+ installed
- [ ] Python 3.9+ installed
- [ ] MongoDB installed and running
- [ ] MQTT broker running (Mosquitto or cloud)
- [ ] Git installed

## Quick Start (5 Minutes)

### 1. Clone and Install

```bash
# Clone repository (or navigate to project)
cd shsms

# Install root dependencies
npm install

# Install all component dependencies
npm run install-all
```

### 2. Start Services

**Terminal 1 - MongoDB:**
```bash
# Start MongoDB (if not running as service)
mongod
```

**Terminal 2 - MQTT Broker:**
```bash
# Start Mosquitto (if using local)
mosquitto
```

**Terminal 3 - Cloud Platform:**
```bash
cd cloud-platform
cp .env.example .env
# Edit .env with your settings
npm start
```

**Terminal 4 - Dashboard:**
```bash
cd dashboard
echo "REACT_APP_API_URL=http://localhost:3000/api" > .env
echo "REACT_APP_WS_URL=http://localhost:3000" >> .env
npm start
```

### 3. Access Dashboard

Open browser: `http://localhost:3001`

## Production Deployment

See [docs/deployment-guide.md](docs/deployment-guide.md) for complete production setup.

## Next Steps

1. Configure firmware for your hardware
2. Upload firmware to meters
3. Configure MQTT broker
4. Set up monitoring
5. Deploy mobile app

## Support

- [API Documentation](docs/api-documentation.md)
- [Hardware Setup](docs/hardware-setup.md)
- [Firmware Development](docs/firmware-development.md)

