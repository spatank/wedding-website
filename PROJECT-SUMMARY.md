# Wedding Website - Refactoring Complete! ✅

## What Changed

Your wedding website has been reorganized into a **modular, easy-to-edit structure**:

### Before:
- ❌ One massive 1100+ line index.html file
- ❌ Hard to find specific content
- ❌ Difficult to navigate and edit

### After:
- ✅ Clean 200-line index.html (navigation & layout only)
- ✅ Separate content files (one per tab)
- ✅ Organized assets folder for images
- ✅ Dynamic content loading with caching

---

## File Structure

```
wedding-website/
│
├── 📄 index.html                    # Main file (navigation + layout)
│   └─→ You rarely need to edit this!
│
├── 📁 content/                      # ⭐ EDIT THESE FILES ⭐
│   ├── home.html                   # Names, dates, welcome message
│   ├── schedule.html               # Event timeline, venues, attire
│   ├── culture.html                # Maharashtrian wedding traditions
│   ├── visa.html                   # Visa application process
│   ├── info.html                   # Travel info, hotels, contacts
│   └── qa.html                     # Frequently asked questions
│
├── 📁 assets/
│   └── 📁 images/
│       ├── home/                   # Hero images, couple photos
│       ├── schedule/               # Event photos (optional)
│       ├── culture/                # Ceremony images
│       ├── visa/                   # (empty - not needed)
│       ├── info/                   # (empty - not needed)
│       └── general/                # Shared images/icons
│
├── 📋 CLAUDE.md                     # Project documentation
├── 📋 README.md                     # Full editing guide
├── 📋 IMAGE-GUIDE.md               # Image placement guide
└── 📋 PROJECT-SUMMARY.md           # This file!
```

---

## Quick Start: How to Edit Content

### 1️⃣ Navigate to Content Files

Open any file in the `content/` folder based on what you want to edit:

- **Names/Dates** → `content/home.html`
- **Event Schedule** → `content/schedule.html`
- **Cultural Info** → `content/culture.html`
- **Visa Details** → `content/visa.html`
- **Travel Info** → `content/info.html`
- **Q&A** → `content/qa.html`

### 2️⃣ Find Placeholders

All placeholder content is marked with brackets:
```html
[Bride Name] & [Groom Name]
[Date - e.g., March 15-17, 2026]
[Venue Name and Address]
[email@example.com placeholder]
```

### 3️⃣ Replace with Your Info

Just replace the placeholder text directly:
```html
<!-- Before -->
<h1>[Bride Name] & [Groom Name]</h1>

<!-- After -->
<h1>Priya & Rahul</h1>
```

### 4️⃣ Save and Refresh

- Save the file
- Refresh your browser
- Content updates automatically!

---

## Adding Images

### Step 1: Place Images in Correct Folder

```bash
assets/images/home/         # → hero-image.jpg, couple-photo.jpg
assets/images/culture/      # → haldi-ceremony.jpg, mandap.jpg, etc.
assets/images/schedule/     # → (optional event photos)
```

### Step 2: Update HTML

Replace placeholder divs with image tags:

```html
<!-- BEFORE: Placeholder -->
<div class="bg-gradient-to-r from-amber-100 to-orange-100 h-64">
    <p>[Hero Image: Couple photo]</p>
</div>

<!-- AFTER: Your Image -->
<img src="assets/images/home/hero-image.jpg"
     alt="Couple photo"
     class="w-full h-64 object-cover rounded-lg">
```

📖 **See [IMAGE-GUIDE.md](IMAGE-GUIDE.md) for complete image placement instructions**

---

## Testing Your Website

**⚠️ IMPORTANT:** You must run a local server to test the site. Opening `index.html` directly causes a "CORS" error that prevents content from loading.

### Option 1: Quick Start Script (Easiest!) ⭐
```bash
./start-server.sh
```
Then open: http://localhost:8000

### Option 2: Manual Python Server
```bash
cd ~/Developer/wedding-website
python3 -m http.server 8000
```
Then open: http://localhost:8000

### Option 3: VS Code Live Server (Recommended for editing)
If using VS Code:
1. Install "Live Server" extension
2. Right-click `index.html` → "Open with Live Server"
3. Auto-refreshes when you save changes!

### What to Test:
- ✅ Click through all 6 tabs
- ✅ Verify content loads correctly
- ✅ Check images display properly
- ✅ Test on mobile (resize browser window)

---

## Key Features

### 🚀 Dynamic Content Loading
- Content files load on-demand when you click tabs
- Cached after first load for fast performance
- No page reloads needed

### 📱 Fully Responsive
- Optimized for desktop, tablet, and mobile
- Sticky navigation stays at top
- Smooth scrolling within content card

### 🎨 Maintained Styling
- All original colors and design preserved
- Traditional Indian wedding theme intact
- Hover effects and animations still work

---

## Helpful Search Terms

When editing content files, use these search terms to find specific sections:

| Search For | Finds |
|-----------|-------|
| `[` | All placeholder text |
| `[Bride` or `[Groom` | Names to update |
| `[Date` | Dates and times |
| `[Venue` | Venue information |
| `[email` | Email addresses |
| `[Time -` | Event times |
| `[Image:` | Image placeholders |
| `<!-- Replace placeholder` | Ready-to-use image code |

---

## Common Editing Tasks

### ✏️ Update Names
**File:** `content/home.html` (Line ~3-4)
```html
<h1 class="heading-font text-4xl md:text-6xl font-bold text-gray-800 mb-4">
    [Bride Name] & [Groom Name]  ← Replace this
</h1>
```

### ✏️ Update Wedding Dates
**File:** `content/home.html` (Line ~9-10)
```html
<p class="text-xl md:text-2xl text-gray-600 mb-2">
    [Date - e.g., March 15-17, 2026]  ← Replace this
</p>
```

### ✏️ Add Event Details
**File:** `content/schedule.html`

Each event has this structure:
```html
<h4>Event Name</h4>
<span>[Time - e.g., 10:00 AM]</span>  ← Replace
<p><strong>Venue:</strong> [Venue Name and Address]</p>  ← Replace
<p>Event description...</p>  ← Update
<p><strong>Attire:</strong> ...</p>  ← Update
```

### ✏️ Add Contact Info
**Files:** `content/visa.html`, `content/info.html`, `content/qa.html`

Search for:
- `[email@example.com placeholder]`
- `[phone number]`
- `[Coordinator Name]`

---

## Deployment to GitHub Pages

When you're ready to publish:

1. **Commit your changes:**
   ```bash
   git add .
   git commit -m "Update wedding website content"
   git push
   ```

2. **Enable GitHub Pages:**
   - Go to repository Settings → Pages
   - Source: Deploy from main branch
   - Folder: / (root)
   - Save

3. **Your site will be live at:**
   ```
   https://yourusername.github.io/wedding-website/
   ```

---

## Need Help?

- 📖 **Full editing guide:** [README.md](README.md)
- 🖼️ **Image placement guide:** [IMAGE-GUIDE.md](IMAGE-GUIDE.md)
- 📋 **Project requirements:** [CLAUDE.md](CLAUDE.md)

---

## Technical Notes

- **No build process required** - works with just HTML/CSS/JS
- **CDN-based Tailwind CSS** - no installation needed
- **Client-side only** - no backend/database required
- **Perfect for GitHub Pages** - static site hosting

---

**Happy editing! 🎉**

Your modular website structure makes it easy to update content without touching the navigation code. Just edit the content files in the `content/` folder and refresh your browser!
