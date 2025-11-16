# Install Node.js to Run the Dashboard

## ❌ Problem
The URL isn't working because Node.js is not installed on your system.

## ✅ Solution: Install Node.js

### Step 1: Download Node.js

1. Go to: **https://nodejs.org/**
2. Download the **LTS version** (recommended)
3. Choose **Windows Installer (.msi)** for 64-bit

### Step 2: Install Node.js

1. Run the downloaded installer
2. Click "Next" through the installation
3. **Important**: Check "Add to PATH" option
4. Click "Install"
5. Wait for installation to complete
6. Click "Finish"

### Step 3: Verify Installation

**Open a NEW PowerShell window** and run:

```powershell
node --version
npm --version
```

You should see version numbers (e.g., `v18.17.0` and `9.6.7`)

### Step 4: Restart Your Computer (Recommended)

After installing Node.js, restart your computer to ensure PATH is updated.

## 🚀 After Installing Node.js

Once Node.js is installed, follow these steps:

### 1. Install Project Dependencies

```powershell
cd C:\Users\sri\shsms\dashboard
npm install
```

```powershell
cd C:\Users\sri\shsms\cloud-platform
npm install
```

### 2. Start Backend Server

**Terminal 1:**
```powershell
cd C:\Users\sri\shsms\cloud-platform
npm start
```

### 3. Start Dashboard

**Terminal 2:**
```powershell
cd C:\Users\sri\shsms\dashboard
echo "REACT_APP_API_URL=http://localhost:3000/api" > .env
echo "REACT_APP_WS_URL=http://localhost:3000" >> .env
npm start
```

### 4. Open Browser

Go to: **http://localhost:3001**

## 📋 Alternative: View Code Without Running

If you just want to view the code without running the server:

1. Open the project folder in File Explorer: `C:\Users\sri\shsms`
2. Open any `.js`, `.jsx`, `.md` file in Notepad or any text editor
3. Or use VS Code/Cursor to view the code

## 🔗 Quick Links

- **Node.js Download**: https://nodejs.org/
- **Node.js Documentation**: https://nodejs.org/docs/

---

**Note**: The dashboard requires Node.js to run. Without it, you can only view the code files, not the running website.

