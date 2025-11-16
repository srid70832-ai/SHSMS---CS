# 🚀 How to Run the Project - Complete Guide

## Step 1: Check if Node.js is Installed

Open PowerShell and run:
```powershell
node --version
npm --version
```

### ✅ If you see version numbers:
- You have Node.js installed! Go to **Step 2**

### ❌ If you see an error:
- **Install Node.js first** (see below)

---

## ⚠️ Install Node.js (If Not Installed)

1. **Download Node.js:**
   - Go to: https://nodejs.org/
   - Click "Download Node.js (LTS)"
   - Download the Windows Installer (.msi)

2. **Install:**
   - Run the downloaded file
   - Click "Next" through installation
   - **IMPORTANT**: Make sure "Add to PATH" is checked
   - Click "Install"
   - Restart your computer

3. **Verify:**
   - Open NEW PowerShell
   - Run: `node --version`
   - Should show version like `v18.17.0`

---

## Step 2: Install Dependencies

Open PowerShell and run:

```powershell
# Navigate to project
cd C:\Users\sri\shsms

# Install dashboard dependencies
cd dashboard
npm install

# Install backend dependencies
cd ..\cloud-platform
npm install
```

**Wait for installation to complete** (may take 2-5 minutes)

---

## Step 3: Create Environment File

```powershell
cd C:\Users\sri\shsms\dashboard
echo "REACT_APP_API_URL=http://localhost:3000/api" > .env
echo "REACT_APP_WS_URL=http://localhost:3000" >> .env
```

---

## Step 4: Start Backend Server

**Open Terminal/PowerShell Window 1:**

```powershell
cd C:\Users\sri\shsms\cloud-platform
npm start
```

**Wait until you see:**
```
Cloud Platform server running on port 3000
Connected to MongoDB (or MongoDB connection error - that's OK)
```

**⚠️ Keep this window open!**

---

## Step 5: Start Dashboard

**Open a NEW Terminal/PowerShell Window 2:**

```powershell
cd C:\Users\sri\shsms\dashboard
npm start
```

**Wait for:**
```
Compiled successfully!

You can now view shsms-dashboard in the browser.

  Local:            http://localhost:3001
  On Your Network:  http://192.168.x.x:3001
```

---

## Step 6: Open in Browser

The dashboard should automatically open. If not:

1. Open your web browser (Chrome, Edge, Firefox)
2. Go to: **http://localhost:3001**

You should see the **SHSMS Control Center** dashboard!

---

## 📋 Quick Command Summary

**Terminal 1 (Backend):**
```powershell
cd C:\Users\sri\shsms\cloud-platform
npm install
npm start
```

**Terminal 2 (Dashboard):**
```powershell
cd C:\Users\sri\shsms\dashboard
npm install
echo "REACT_APP_API_URL=http://localhost:3000/api" > .env
echo "REACT_APP_WS_URL=http://localhost:3000" >> .env
npm start
```

**Browser:**
```
http://localhost:3001
```

---

## 🔧 Troubleshooting

### Port Already in Use?

```powershell
# Find and kill process on port 3000
netstat -ano | findstr :3000
taskkill /PID <PID_NUMBER> /F

# Find and kill process on port 3001
netstat -ano | findstr :3001
taskkill /PID <PID_NUMBER> /F
```

### MongoDB Error?

The dashboard will still work! MongoDB is optional. You'll just see empty data.

### npm install fails?

```powershell
# Clear npm cache
npm cache clean --force

# Try again
npm install
```

### Still not working?

Check the terminal windows for error messages and share them.

---

## ✅ Success Indicators

You'll know it's working when:
- ✅ Terminal 1 shows: "Cloud Platform server running on port 3000"
- ✅ Terminal 2 shows: "Compiled successfully!"
- ✅ Browser shows: SHSMS Control Center dashboard
- ✅ You can navigate between Dashboard, Meters, Analytics, Alerts pages

---

## 🎯 What You'll See

Once running, the dashboard shows:
- **Dashboard** - Overview with statistics
- **Meters** - List of smart meters
- **Analytics** - Predictions and hotspots
- **Alerts** - High-risk meters

---

**Need help?** Check `FIX-URL-ISSUE.md` or `INSTALL-NODEJS.md`

