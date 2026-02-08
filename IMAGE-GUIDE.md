# Image Placement Guide

This guide shows you exactly which images to add and where to place them in your website.

## Image Directory Overview

```
assets/images/
├── home/          → Hero/couple photos for home page
├── schedule/      → Event-specific photos (optional)
├── culture/       → Cultural ceremony and tradition photos
├── visa/          → (currently no images needed)
├── info/          → (currently no images needed)
└── general/       → Shared decorative images, icons
```

## Recommended Images by Section

### 1. Home Page ([content/home.html](content/home.html))

**Location in assets:** `assets/images/home/`

| Image Name Suggestion | Description | Recommended Size |
|----------------------|-------------|-----------------|
| `hero-image.jpg` | Main couple photo or wedding motif | 1920x1080px |

**Where to add in file:**
- Search for: `[Hero Image: Couple photo or traditional Indian wedding motif]`
- Line ~12-16 in home.html

---

### 2. Schedule Page ([content/schedule.html](content/schedule.html))

**Location in assets:** `assets/images/schedule/`

These are **optional** - events already have colored placeholder backgrounds.

| Image Name Suggestion | Description | Event |
|----------------------|-------------|-------|
| `haldi-ceremony.jpg` | Haldi ceremony photo | Day 1, Event 1 |
| `mehendi-ceremony.jpg` | Mehendi/henna photo | Day 1, Event 2 |
| `sangeet-night.jpg` | Sangeet celebration | Day 1, Event 3 |
| `baraat.jpg` | Groom's procession | Day 2, Event 4 |
| `wedding-ceremony.jpg` | Main ceremony under mandap | Day 2, Event 5 |
| `reception.jpg` | Reception party | Day 3, Event 7 |

---

### 3. Maharashtrian Wedding (Cultural Info) ([content/culture.html](content/culture.html))

**Location in assets:** `assets/images/culture/`

| Image Name Suggestion | Description | Section |
|----------------------|-------------|---------|
| `haldi-mehendi.jpg` | Haldi or Mehendi application | Pre-Wedding Rituals |
| `sangeet-performance.jpg` | Sangeet night dancing | Sangeet Section |
| `mandap-ceremony.jpg` | Wedding ceremony under mandap | Wedding Day |
| `traditional-attire.jpg` | Bride/groom in traditional wear | Traditional Attire |
| `maharashtrian-food.jpg` | Traditional thali/food spread | Food & Hospitality |

**Where to find placeholders:**
- Section 1 (Line ~10): `[Image: Haldi ceremony or Mehendi application]`
- Section 2 (Line ~35): `[Image: Sangeet night dancing or performance]`
- Section 3 (Line ~51): `[Image: Wedding ceremony under mandap]`
- Section 4 (Line ~76): `[Image: Traditional Maharashtrian wedding attire]`
- Section 5 (Line ~95): `[Image: Traditional Maharashtrian thali/food]`

---

## How to Replace Image Placeholders

### Option 1: Using Commented Code (Recommended)

Many placeholders already have commented-out `<img>` tags ready to use:

1. **Find the placeholder div:**
   ```html
   <div class="bg-gradient-to-br from-amber-200 to-orange-200 rounded-lg h-64 flex items-center justify-center">
       <p class="text-gray-600 text-center px-4">[Image: Haldi ceremony or Mehendi application]</p>
   </div>
   <!-- Replace placeholder with actual image:
   <img src="assets/images/culture/haldi-mehendi.jpg" alt="Haldi or Mehendi ceremony" class="rounded-lg h-64 w-full object-cover">
   -->
   ```

2. **Delete the placeholder div and uncomment the img tag:**
   ```html
   <img src="assets/images/culture/haldi-mehendi.jpg" alt="Haldi or Mehendi ceremony" class="rounded-lg h-64 w-full object-cover">
   ```

### Option 2: Manual Replacement

Replace placeholder divs with:

```html
<img src="assets/images/FOLDER/your-image.jpg"
     alt="Description of image"
     class="rounded-lg h-64 w-full object-cover">
```

**Class explanations:**
- `rounded-lg` - Rounded corners
- `h-64` - Fixed height (256px) - adjust as needed (h-48, h-72, h-96)
- `w-full` - Full width of container
- `object-cover` - Crops image to fit without distortion

---

## Image Optimization Tips

### Before Uploading:
1. **Resize images** to appropriate dimensions (max 1920px wide for hero images)
2. **Compress images** using tools like:
   - [TinyPNG](https://tinypng.com/) - Easy web-based compression
   - [Squoosh](https://squoosh.app/) - Advanced compression options
   - ImageOptim (Mac) or RIOT (Windows) - Desktop tools

### Target File Sizes:
- Hero images: 200-500KB
- Section images: 100-300KB
- Small decorative images: 50-100KB

### Supported Formats:
- `.jpg` / `.jpeg` - Best for photos
- `.png` - Best for graphics with transparency
- `.webp` - Modern format with better compression (if supported)

---

## Quick Reference: Search Terms to Find Placeholders

In VS Code or your editor, search for these terms to find all image placeholders:

- `[Image:` - Finds all image placeholders
- `[Hero Image` - Home page hero image
- `assets/images/` - Finds existing image references
- `Replace placeholder with actual image:` - Finds commented-out ready-to-use code

---

## Example: Complete Image Replacement

**Before (in content/culture.html):**
```html
<div class="order-2 md:order-1">
    <div class="bg-gradient-to-br from-amber-200 to-orange-200 rounded-lg h-64 flex items-center justify-center">
        <p class="text-gray-600 text-center px-4">[Image: Haldi ceremony or Mehendi application]</p>
    </div>
</div>
```

**After:**
```html
<div class="order-2 md:order-1">
    <img src="assets/images/culture/haldi-ceremony.jpg"
         alt="Haldi ceremony with turmeric paste"
         class="rounded-lg h-64 w-full object-cover">
</div>
```

---

## Need Help?

If you're unsure about any image placement:
1. Look for HTML comments in the content files - they often have instructions
2. Check the existing placeholder structure for size/layout hints
3. Test in browser - images should fit nicely within their colored placeholder areas
