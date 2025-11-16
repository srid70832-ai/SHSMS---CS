# How to View the Project

Multiple ways to view and access your Self-Healing Smart Meter System project.

## 📂 Method 1: View in File Explorer (Windows)

### Option A: Using Command
```powershell
cd C:\Users\sri\shsms
explorer .
```

### Option B: Manual Navigation
1. Open **File Explorer** (Windows key + E)
2. Navigate to: `C:\Users\sri\shsms`
3. You'll see all project folders and files

### Option C: Quick Access
1. Press **Windows key + R**
2. Type: `C:\Users\sri\shsms`
3. Press Enter

## 🌐 Method 2: View the Dashboard (Website)

### Step-by-Step:

**1. Open Terminal/PowerShell:**
   - Press `Windows key + X`
   - Select "Windows PowerShell" or "Terminal"

**2. Navigate to project:**
   ```powershell
   cd C:\Users\sri\shsms
   ```

**3. Start Backend Server:**
   ```powershell
   cd cloud-platform
   npm install
   npm start
   ```
   Wait for: `Cloud Platform server running on port 3000`

**4. Open NEW Terminal Window:**
   - Press `Windows key + X` again
   - Open another PowerShell window

**5. Start Dashboard:**
   ```powershell
   cd C:\Users\sri\shsms\dashboard
   npm install
   echo "REACT_APP_API_URL=http://localhost:3000/api" > .env
   echo "REACT_APP_WS_URL=http://localhost:3000" >> .env
   npm start
   ```

**6. Open Browser:**
   - The dashboard will automatically open at: **http://localhost:3001**
   - Or manually go to: `http://localhost:3001`

## 💻 Method 3: View in VS Code / Cursor

**1. Open in Editor:**
   ```powershell
   cd C:\Users\sri\shsms
   code .
   ```
   Or in Cursor:
   ```powershell
   cursor .
   ```

**2. View Project Structure:**
   - Left sidebar shows all folders
   - Click folders to expand
   - Click files to view code

## 📋 Method 4: View Project Structure (Command Line)

```powershell
cd C:\Users\sri\shsms
tree /F /A
```

Or see just folders:
```powershell
Get-ChildItem -Directory
```

## 🗂️ Main Project Folders

When you open the project, you'll see:

```
shsms/
├── 📁 firmware/          → Smart meter code (C++)
├── 📁 cloud-platform/    → Backend server (Node.js)
├── 📁 dashboard/         → Web dashboard (React) ⭐
├── 📁 blockchain/        → Blockchain service
├── 📁 mesh-network/     → Mesh communication
├── 📁 mobile-app/       → Mobile app (React Native)
├── 📁 docs/             → Documentation
├── 📄 README.md         → Main documentation
├── 📄 QUICK-START.md    → Quick start guide
└── 📄 PROJECT-OVERVIEW.md → Project overview
```

## 🎯 Quick View Options

### View Documentation:
- Open `README.md` in any text editor
- Open `QUICK-START.md` for instructions
- Open `PROJECT-OVERVIEW.md` for structure

### View Code:
- Open any `.js`, `.cpp`, `.jsx` file in VS Code/Cursor
- Files are organized by component

### View Website (Dashboard):
Follow **Method 2** above to run the dashboard

## 🚀 One-Command Quick View

To quickly open everything:

```powershell
# Open project in File Explorer
cd C:\Users\sri\shsms
explorer .

# Open project in VS Code/Cursor
code .
# or
cursor .
```

## 📱 What You Can View

1. **Project Files** - All source code and documentation
2. **Dashboard Website** - Web interface at http://localhost:3001
3. **API Documentation** - See `docs/api-documentation.md`
4. **Architecture** - See `ARCHITECTURE.md`

## ❓ Troubleshooting

**Can't find the project?**
```powershell
# Check if it exists
Test-Path C:\Users\sri\shsms

# List contents
Get-ChildItem C:\Users\sri\shsms
```

**Dashboard won't start?**
- Make sure Node.js is installed: `node --version`
- Install dependencies first: `npm install`
- Check if port 3001 is available

**Want to see code without running?**
- Just open files in any text editor
- No need to run anything to view code

---

**Project Location**: `C:\Users\sri\shsms`
**Dashboard URL**: `http://localhost:3001` (when running)

