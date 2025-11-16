# System Architecture

Complete architecture overview of the Self-Healing Smart Meter System (SHSMS).

## System Overview

The SHSMS is a comprehensive IoT system that enables smart meters to automatically detect, diagnose, and repair faults without human intervention, while providing real-time monitoring and analytics.

## Architecture Diagram

```
┌─────────────────────────────────────────────────────────────┐
│                    Smart Meter (Edge)                       │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐  │
│  │ Sensors  │  │   AI      │  │  Self-   │  │   Comm   │  │
│  │ Monitor  │→ │Diagnosis  │→ │ Healing  │→ │  Module  │  │
│  └──────────┘  └──────────┘  └──────────┘  └──────────┘  │
└──────────────────────┬──────────────────────────────────────┘
                       │ MQTT / WiFi / Bluetooth
                       ▼
┌─────────────────────────────────────────────────────────────┐
│                    Cloud Platform                            │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐     │
│  │   Digital    │  │  Analytics   │  │   MQTT       │     │
│  │    Twin      │  │   Service    │  │  Service     │     │
│  └──────────────┘  └──────────────┘  └──────────────┘     │
│         │                  │                  │            │
│         └──────────────────┴──────────────────┘            │
│                            │                                │
│                    ┌───────▼────────┐                       │
│                    │   REST API     │                       │
│                    └───────┬────────┘                       │
└────────────────────────────┼────────────────────────────────┘
                             │
        ┌────────────────────┼────────────────────┐
        │                    │                    │
        ▼                    ▼                    ▼
┌──────────────┐   ┌──────────────┐   ┌──────────────┐
│  Dashboard   │   │  Blockchain   │   │  Mesh Network│
│  (React)     │   │   Service     │   │  Coordinator  │
└──────────────┘   └──────────────┘   └──────────────┘
        │
        ▼
┌──────────────┐
│  Mobile App  │
│ (React Native)│
└──────────────┘
```

## Component Details

### 1. Firmware (Edge Layer)

**Location:** `firmware/`

**Components:**
- **Sensor Monitor**: Reads temperature, voltage, current, memory, communication status
- **AI Diagnosis Engine**: On-device fault detection using rule-based or ML models
- **Self-Healing Logic**: Automatic repair mechanisms (reboot, recalibrate, rollback, etc.)
- **Communication Module**: Dual-channel communication (Primary + Fallback)

**Technologies:**
- ESP32-S3 / ARM Cortex-M4/M7
- TensorFlow Lite Micro (for ML models)
- Arduino framework
- MQTT, WiFi, Bluetooth

### 2. Cloud Platform

**Location:** `cloud-platform/`

**Components:**
- **Digital Twin System**: Virtual representation of each physical meter
- **Analytics Service**: Pattern recognition, failure prediction, tampering detection
- **MQTT Service**: Real-time data ingestion from meters
- **REST API**: HTTP API for dashboard and mobile app

**Technologies:**
- Node.js + Express
- MongoDB (Digital Twin storage)
- Socket.IO (real-time updates)
- MQTT client

### 3. Blockchain Service

**Location:** `blockchain/`

**Purpose:** Immutable ledger for maintenance events

**Features:**
- Self-healing event logging
- Service history tracking
- Firmware update logs
- Tamper-proof audit trail

**Supported Blockchains:**
- Ethereum
- Polygon
- Hyperledger Fabric
- Mock (for development)

### 4. Mesh Network

**Location:** `mesh-network/`

**Purpose:** Meter-to-meter cooperative communication

**Features:**
- Cooperative healing protocols
- Calibration baseline sharing
- Communication routing
- Error correction patterns

**Protocols:**
- Bluetooth Mesh
- Zigbee
- Thread

### 5. Dashboard

**Location:** `dashboard/`

**Purpose:** Utility control center

**Features:**
- Real-time meter health monitoring
- High-risk meter alerts
- Self-healing event logs
- Predictive failure map
- Analytics and reports

**Technologies:**
- React 18
- Material-UI
- Socket.IO Client
- Recharts

### 6. Mobile App

**Location:** `mobile-app/`

**Purpose:** Field technician tool

**Features:**
- View meter fault details
- Self-healing attempt history
- Step-by-step repair guides
- Spare parts checklist
- GPS navigation

**Technologies:**
- React Native
- Expo
- React Navigation

## Data Flow

### 1. Sensor Reading Flow

```
Sensor → Sensor Monitor → AI Diagnosis → Self-Healing → Communication → Cloud
```

### 2. Health Report Flow

```
Meter → MQTT → Cloud Platform → Digital Twin Update → Dashboard (Real-time)
```

### 3. Healing Event Flow

```
Meter → MQTT → Cloud Platform → Blockchain Service → Immutable Log
```

### 4. Command Flow

```
Dashboard → REST API → MQTT → Meter → Action Execution
```

## Security Architecture

### Communication Security

- TLS/SSL for MQTT (optional)
- Certificate-based authentication
- Encrypted data transmission

### Access Control

- API authentication (JWT/OAuth2)
- Role-based access control
- Secure credential storage

### Data Privacy

- Encrypted storage
- Secure key management
- Privacy-compliant data handling

## Scalability

### Horizontal Scaling

- Multiple MQTT brokers
- Load-balanced API servers
- Distributed database (MongoDB sharding)

### Vertical Scaling

- Optimized database queries
- Caching (Redis)
- Message queuing (RabbitMQ/Kafka)

## Monitoring & Observability

### Metrics

- Meter health scores
- Communication status
- Self-healing success rate
- System performance metrics

### Logging

- Centralized logging (Winston, ELK)
- Structured logging format
- Log retention policies

### Alerts

- High-risk meter alerts
- System health alerts
- Performance degradation alerts

## Deployment Architecture

### Development

- Local MongoDB
- Local MQTT broker
- All services on localhost

### Production

- Cloud-hosted MongoDB (Atlas)
- Managed MQTT (AWS IoT Core, Azure IoT Hub)
- Containerized services (Docker)
- Kubernetes orchestration (optional)

## Integration Points

### External Systems

- Utility billing systems
- SCADA systems
- Maintenance management systems
- Customer portals

### APIs

- REST API for external integrations
- WebSocket for real-time updates
- MQTT for IoT device communication

## Future Enhancements

1. **Advanced AI Models**
   - Deep learning for fault prediction
   - Reinforcement learning for healing optimization

2. **Edge Computing**
   - More processing at edge
   - Reduced cloud dependency

3. **5G Integration**
   - Ultra-low latency communication
   - High bandwidth for data transfer

4. **Blockchain Smart Contracts**
   - Automated maintenance scheduling
   - Smart contract-based billing

## Performance Targets

- **Latency**: < 100ms for health reports
- **Throughput**: 10,000+ meters per server
- **Availability**: 99.9% uptime
- **Self-Healing Success Rate**: > 80%

## Compliance

- IEC 62056 (Electricity metering)
- ISO/IEC 27001 (Information security)
- GDPR (Data privacy)
- Local utility regulations

