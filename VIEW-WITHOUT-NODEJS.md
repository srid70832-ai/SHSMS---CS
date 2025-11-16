# View Project Without Node.js

If you don't have Node.js installed and just want to view the project files:

## 📂 View Files in File Explorer

1. Open File Explorer
2. Navigate to: `C:\Users\sri\shsms`
3. Browse all folders and files

## 📄 View Code Files

You can open any code file in:
- **Notepad** (built-in Windows)
- **Notepad++** (if installed)
- **VS Code** (if installed)
- **Any text editor**

### Important Files to View:

- `README.md` - Main documentation
- `QUICK-START.md` - Quick start guide
- `PROJECT-OVERVIEW.md` - Project structure
- `dashboard/src/App.js` - Main dashboard code
- `dashboard/src/pages/Dashboard.js` - Dashboard page
- `cloud-platform/server.js` - Backend server code

## 🌐 To Actually Run the Website

You **must install Node.js** to run the dashboard:

1. Download from: https://nodejs.org/
2. Install it
3. Then follow the steps in `FIX-URL-ISSUE.md`

## 📋 Project Structure (What You Can See)

```
shsms/
├── 📁 firmware/          → C++ code for smart meters
├── 📁 cloud-platform/    → Node.js backend code
├── 📁 dashboard/         → React frontend code
├── 📁 blockchain/        → Blockchain service code
├── 📁 mesh-network/     → Mesh network code
├── 📁 mobile-app/       → React Native app code
└── 📁 docs/             → Documentation files
```

All these files are viewable in any text editor!

## 💡 Quick View Commands

**Open in File Explorer:**
```powershell
cd C:\Users\sri\shsms
explorer .
```

**View file contents:**
```powershell
Get-Content C:\Users\sri\shsms\README.md
```

---

**Remember**: To see the website running, you need Node.js installed.

