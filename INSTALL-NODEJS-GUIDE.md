# 📥 Install Node.js - Step by Step Guide

## Step 1: Download Node.js

1. **Open your web browser**
2. **Go to:** https://nodejs.org/
3. **Click the green button** that says **"Download Node.js (LTS)"**
   - LTS = Long Term Support (recommended version)
   - This will download the Windows Installer (.msi file)

## Step 2: Run the Installer

1. **Find the downloaded file** (usually in your Downloads folder)
   - File name will be like: `node-v20.x.x-x64.msi`
2. **Double-click** the file to run it
3. **Click "Next"** on the welcome screen
4. **Accept the license agreement** and click "Next"
5. **Choose installation location** (default is fine) and click "Next"

## Step 3: Important Settings

**⚠️ IMPORTANT:** Make sure these are checked:
- ✅ **"Add to PATH"** - This is CRITICAL!
- ✅ **"Automatically install the necessary tools"** (optional but recommended)

Click **"Next"**

## Step 4: Install

1. Click **"Install"**
2. You may see a User Account Control prompt - click **"Yes"**
3. Wait for installation to complete (1-2 minutes)
4. Click **"Finish"**

## Step 5: Restart Your Computer

**⚠️ IMPORTANT:** Restart your computer to ensure Node.js is properly added to your system PATH.

## Step 6: Verify Installation

After restarting, open **PowerShell** and run:

```powershell
node --version
npm --version
```

**✅ Success if you see:**
```
v20.11.0    (or similar version number)
10.2.4      (or similar npm version)
```

**❌ If you see an error:**
- Make sure you restarted your computer
- Try opening a NEW PowerShell window
- Check if Node.js appears in Start Menu

## Alternative: Using Chocolatey (Advanced)

If you have Chocolatey package manager:

```powershell
choco install nodejs-lts
```

## Alternative: Using Winget (Windows 11)

```powershell
winget install OpenJS.NodeJS.LTS
```

## ✅ After Installation

Once Node.js is installed, you can:

1. **Run the project:**
   ```powershell
   cd C:\Users\sri\shsms
   .\start-backend.ps1
   ```

2. **Or follow the manual steps:**
   - See `HOW-TO-RUN.md` for complete instructions

## 🔗 Quick Links

- **Official Download:** https://nodejs.org/
- **Documentation:** https://nodejs.org/docs/
- **Verify Installation:** Run `node --version` in PowerShell

## ❓ Troubleshooting

### "node: command not found" after installation

1. **Restart your computer** (most important!)
2. **Open a NEW PowerShell window** (not the old one)
3. **Check PATH:**
   ```powershell
   $env:PATH -split ';' | Select-String node
   ```
4. If Node.js path is missing, you may need to reinstall and make sure "Add to PATH" is checked

### Installation fails

- Run installer as Administrator (Right-click → Run as administrator)
- Disable antivirus temporarily
- Check Windows updates

### Wrong version installed

- Uninstall current version from Control Panel
- Download the correct version from nodejs.org
- Reinstall

---

**Once Node.js is installed, you're ready to run the project!** 🚀

See `RUN-ME-FIRST.md` for next steps.


