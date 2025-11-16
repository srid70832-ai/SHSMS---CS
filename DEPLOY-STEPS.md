# 🚀 Deploy to Vercel - Step by Step

## ✅ You're Logged In - Let's Deploy!

### Step 1: Deploy Dashboard (Frontend)

**Open PowerShell and run:**
```powershell
cd C:\Users\sri\shsms\dashboard
vercel
```

**Answer the prompts:**
- Set up and deploy? → **Yes** (press Enter)
- Which scope? → **Your account** (press Enter)
- Link to existing project? → **No** (press N)
- Project name? → **shsms-dashboard** (or press Enter for default)
- Directory? → **./** (press Enter)
- Override settings? → **No** (press Enter)

**Wait for deployment...** (takes 1-2 minutes)

**You'll get a URL like:** `https://shsms-dashboard.vercel.app`

---

### Step 2: Deploy Backend

**In the same PowerShell or new one:**
```powershell
cd C:\Users\sri\shsms\cloud-platform
vercel
```

**Answer the prompts:**
- Set up and deploy? → **Yes**
- Which scope? → **Your account**
- Link to existing project? → **No**
- Project name? → **shsms-backend**
- Directory? → **./**
- Override settings? → **No**

**Wait for deployment...**

**You'll get a URL like:** `https://shsms-backend.vercel.app`

---

### Step 3: Configure Environment Variables

**Go to Vercel Dashboard:** https://vercel.com/dashboard

**For Dashboard Project:**
1. Click on `shsms-dashboard` project
2. Go to **Settings** → **Environment Variables**
3. Add:
   - `REACT_APP_API_URL` = `https://shsms-backend.vercel.app/api`
   - `REACT_APP_WS_URL` = `https://shsms-backend.vercel.app`
4. Click **Save**
5. Go to **Deployments** → Click **Redeploy** (three dots menu)

**For Backend Project:**
1. Click on `shsms-backend` project
2. Go to **Settings** → **Environment Variables**
3. Add:
   - `MONGODB_URI` = `mongodb://localhost:27017/shsms` (or your MongoDB URL)
   - `MQTT_BROKER_URL` = `mqtt://localhost:1883` (or your MQTT URL)
   - `PORT` = `3000`
   - `NODE_ENV` = `production`
4. Click **Save**
5. Go to **Deployments** → Click **Redeploy**

---

### Step 4: Test Your Live App

**Open your dashboard URL:**
```
https://shsms-dashboard.vercel.app
```

**You should see your SHSMS Control Center!** 🎉

---

## 🎯 Quick Commands

**Deploy Dashboard:**
```powershell
cd C:\Users\sri\shsms\dashboard
vercel --prod
```

**Deploy Backend:**
```powershell
cd C:\Users\sri\shsms\cloud-platform
vercel --prod
```

**Or use the batch file:**
```powershell
cd C:\Users\sri\shsms
.\DEPLOY-VERCEL.bat
```

---

## 📋 Checklist

- [ ] Dashboard deployed to Vercel
- [ ] Backend deployed to Vercel
- [ ] Environment variables added
- [ ] Dashboard redeployed with API URL
- [ ] Backend redeployed with MongoDB/MQTT URLs
- [ ] Tested live URLs

---

## 🔗 Your URLs

After deployment, you'll have:
- **Dashboard:** `https://your-dashboard.vercel.app`
- **Backend:** `https://your-backend.vercel.app`

**Share these URLs with anyone!** 🌍

---

## 🆘 Troubleshooting

**"vercel: command not found"**
→ Install: `npm install -g vercel`

**Deployment fails**
→ Check Vercel dashboard for error logs

**Environment variables not working**
→ Make sure to redeploy after adding variables

---

**Ready to deploy?** Run the commands above! 🚀

