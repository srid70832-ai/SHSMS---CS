# 🌐 How to Open the Dashboard - Simple Steps

## 🚀 Method 1: Easiest (Double-Click)

1. **Go to:** `C:\Users\sri\shsms` in File Explorer
2. **Double-click:** `RUN-BOTH.bat`
3. **Wait 30 seconds**
4. **Browser opens automatically!**

---

## 🚀 Method 2: Manual Open

### Step 1: Make Sure Servers Are Running

**Check if running:**
- Double-click: `CHECK-STATUS.bat`
- If it says "NOT running", go to Step 2
- If it says "running", skip to Step 3

### Step 2: Start Servers

**Option A - Automatic:**
- Double-click: `RUN-BOTH.bat`

**Option B - Manual:**
- Double-click: `RUN-BACKEND.bat` (wait 10 seconds)
- Double-click: `RUN-DASHBOARD.bat` (wait 30 seconds)

### Step 3: Open Browser

**Option A - Automatic:**
- Double-click: `OPEN-PAGE.bat`

**Option B - Manual:**
1. Open your browser (Chrome, Edge, Firefox)
2. Type in address bar: `http://localhost:3001`
3. Press Enter

---

## 📋 Quick Reference

| What You Want | What to Do |
|--------------|------------|
| **Start everything** | Double-click `RUN-BOTH.bat` |
| **Open page only** | Double-click `OPEN-PAGE.bat` |
| **Check status** | Double-click `CHECK-STATUS.bat` |
| **Manual URL** | Type `http://localhost:3001` in browser |

---

## ✅ Step-by-Step (First Time)

1. **Open File Explorer**
2. **Go to:** `C:\Users\sri\shsms`
3. **Double-click:** `RUN-BOTH.bat`
4. **Wait 60 seconds** (for React to compile)
5. **Browser opens automatically**
6. **If not, manually go to:** `http://localhost:3001`
7. **Press F5** to refresh if page is blank

---

## 🔍 Troubleshooting

### Page Won't Open?
- Wait 60 seconds (React is compiling)
- Press F5 to refresh
- Try: `http://127.0.0.1:3001`

### "This site can't be reached"?
- Servers not running
- Double-click `RUN-BOTH.bat` again

### Blank White Page?
- Wait 60 seconds
- Press F5
- Check PowerShell window for "Compiled successfully!"

---

## 🎯 One Command to Open

**In PowerShell:**
```powershell
cd C:\Users\sri\shsms
.\OPEN-PAGE.bat
```

**Or just type in browser:**
```
http://localhost:3001
```

---

**That's it! Simple!** 😊

