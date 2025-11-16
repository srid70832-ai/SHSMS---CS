# Fix: URL Not Working - Step by Step Solution

If http://localhost:3001 is not working, follow these steps:

## ✅ Step 1: Install Dependencies

**Open PowerShell and run:**

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

## ✅ Step 2: Create Environment File for Dashboard

```powershell
cd C:\Users\sri\shsms\dashboard
echo "REACT_APP_API_URL=http://localhost:3000/api" > .env
echo "REACT_APP_WS_URL=http://localhost:3000" >> .env
```

## ✅ Step 3: Start Backend Server (Terminal 1)

**Open a NEW PowerShell window:**

```powershell
cd C:\Users\sri\sri\shsms\cloud-platform
npm start
```

**Wait until you see:**
```
Cloud Platform server running on port 3000
```

**Keep this window open!**

## ✅ Step 4: Start Dashboard (Terminal 2)

**Open ANOTHER NEW PowerShell window:**

```powershell
cd C:\Users\sri\shsms\dashboard
npm start
```

**Wait for:**
```
Compiled successfully!
You can now view shsms-dashboard in the browser.
  Local:            http://localhost:3001
```

## ✅ Step 5: Open Browser

The dashboard should automatically open. If not:
- Manually go to: **http://localhost:3001**

## 🔧 Troubleshooting

### Port Already in Use?

If you see "port already in use":
```powershell
# Kill process on port 3000
netstat -ano | findstr :3000
taskkill /PID <PID_NUMBER> /F

# Kill process on port 3001
netstat -ano | findstr :3001
taskkill /PID <PID_NUMBER> /F
```

### Node.js Not Installed?

Check if Node.js is installed:
```powershell
node --version
npm --version
```

If not installed, download from: https://nodejs.org/

### MongoDB Connection Error?

The dashboard will still work without MongoDB, but you won't see data. To fix:
1. Install MongoDB: https://www.mongodb.com/try/download/community
2. Or ignore the error for now (dashboard will show empty state)

### Still Not Working?

Check the terminal windows for error messages and share them.

