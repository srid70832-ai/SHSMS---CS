# 🚀 Deploy Using npx (No Installation Needed!)

## ✅ Quick Fix - Use npx Instead!

If `vercel` command doesn't work, use `npx` - it runs Vercel without installing!

### Deploy Dashboard:

**In PowerShell:**
```powershell
cd C:\Users\sri\shsms\dashboard
npx vercel
```

### Deploy Backend:

```powershell
cd C:\Users\sri\shsms\cloud-platform
npx vercel
```

---

## 🎯 What is npx?

`npx` runs packages without installing them globally. It's built into npm!

**Advantages:**
- ✅ No installation needed
- ✅ Always uses latest version
- ✅ Works immediately

---

## 📋 Step-by-Step with npx

### Step 1: Deploy Dashboard

```powershell
cd C:\Users\sri\shsms\dashboard
npx vercel
```

**Answer prompts:**
- Set up and deploy? → **Yes** (Enter)
- Which scope? → **Your account** (Enter)
- Link to existing? → **No** (N)
- Project name? → **shsms-dashboard** (Enter)
- Directory? → **./** (Enter)
- Override? → **No** (Enter)

**Wait for deployment...**

### Step 2: Deploy Backend

```powershell
cd C:\Users\sri\shsms\cloud-platform
npx vercel
```

**Same prompts, project name:** `shsms-backend`

### Step 3: Configure Environment Variables

Go to Vercel dashboard and add environment variables (see DEPLOY-STEPS.md)

---

## 🚀 Or Use Batch File

**Double-click:** `USE-NPX.bat`

It will deploy both automatically!

---

## ✅ That's It!

Using `npx vercel` instead of just `vercel` will work immediately!

**Try it now:**
```powershell
cd C:\Users\sri\shsms\dashboard
npx vercel
```

