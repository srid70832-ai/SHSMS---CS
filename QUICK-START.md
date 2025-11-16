# Quick Start - View the Dashboard

Simple steps to get the dashboard running and view it in your browser.

## Prerequisites

Make sure you have:
- Node.js 18+ installed
- npm installed
- MongoDB running (optional for basic viewing)

## Step 1: Install Dependencies

```bash
# Navigate to project root
cd shsms

# Install dashboard dependencies
cd dashboard
npm install

# Install cloud platform dependencies
cd ../cloud-platform
npm install
```

## Step 2: Start the Backend (Cloud Platform)

Open a terminal and run:

```bash
cd shsms/cloud-platform

# Create .env file if it doesn't exist
# (MongoDB is optional - the app will work without it, just with limited data)
npm start
```

The backend will start on **http://localhost:3000**

You should see:
```
Cloud Platform server running on port 3000
```

## Step 3: Start the Dashboard (Frontend)

Open a **new terminal** and run:

```bash
cd shsms/dashboard

# Create .env file with API URL
echo "REACT_APP_API_URL=http://localhost:3000/api" > .env
echo "REACT_APP_WS_URL=http://localhost:3000" >> .env

# Start the React app
npm start
```

The dashboard will automatically open in your browser at **http://localhost:3001**

If it doesn't open automatically, manually navigate to:
```
http://localhost:3001
```

## Step 4: View the Dashboard

You should now see the SHSMS Control Center dashboard with:
- Dashboard overview page
- Meters list
- Analytics page
- Alerts page

## Troubleshooting

### Port Already in Use

If port 3000 or 3001 is already in use:

**For backend (port 3000):**
```bash
# Edit cloud-platform/.env or set environment variable
PORT=3002 npm start
```

**For frontend (port 3001):**
React will automatically ask to use a different port, or you can:
```bash
PORT=3002 npm start
```

### MongoDB Connection Error

The app will still work without MongoDB, but you won't see meter data. To fix:

1. Install MongoDB: https://www.mongodb.com/try/download/community
2. Start MongoDB service
3. Or use MongoDB Atlas (cloud): Update `MONGODB_URI` in `.env`

### No Data Showing

If the dashboard loads but shows no data:
- This is normal if no meters are connected yet
- The dashboard will show empty states
- You can test by adding mock data or connecting a meter

## Quick Test Without Full Setup

If you just want to see the UI without backend:

```bash
cd dashboard
npm install
npm start
```

The dashboard will load but API calls will fail (you'll see errors in console). The UI will still be visible.

## Next Steps

1. Connect a smart meter (see firmware/README.md)
2. Set up MQTT broker for real-time data
3. Configure MongoDB for data persistence
4. Deploy to production (see DEPLOYMENT.md)

