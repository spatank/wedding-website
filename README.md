# Wedding Website - Project Structure

## Overview
Your wedding website has been refactored into a modular structure for easier content editing. The main `index.html` file now dynamically loads content from separate HTML files.

## Directory Structure

```
wedding-website/
├── index.html              # Main file with layout, navigation, and JavaScript
├── content/                # Tab content files (edit these!)
│   ├── home.html          # Home tab content
│   ├── schedule.html      # Schedule tab content
│   ├── culture.html       # Maharashtrian Wedding tab content
│   ├── visa.html          # Visa Info tab content
│   ├── info.html          # Useful Info tab content
│   └── qa.html            # Q&A tab content
├── assets/                # Image and media assets
│   └── images/
│       ├── home/          # Hero image, couple photos
│       ├── schedule/      # Event-specific images
│       ├── culture/       # Cultural ceremony images
│       ├── visa/          # (if needed)
│       ├── info/          # (if needed)
│       └── general/       # Shared images, icons, etc.
└── CLAUDE.md              # Project documentation

```

## How to Edit Content

### Editing Tab Content
Each tab's content is in a separate file in the `content/` directory:

1. **Navigate to the content file** you want to edit (e.g., `content/home.html`)
2. **Edit the HTML** directly - all placeholders are marked with brackets like `[Bride Name]`
3. **Save the file** - changes will appear when you reload the page

### Adding Images

1. **Place your images** in the appropriate `assets/images/` subdirectory:
   - `home/` - Couple photos, hero images
   - `schedule/` - Event photos
   - `culture/` - Ceremony and cultural tradition photos
   - `general/` - Shared images used across multiple tabs

2. **Update the image placeholders** in the content files:

   Replace:
   ```html
   <div class="bg-gradient-to-r from-amber-100 to-orange-100 h-64 md:h-96 flex items-center justify-center">
       <p class="text-gray-600 text-lg">[Hero Image: Couple photo]</p>
   </div>
   ```

   With:
   ```html
   <img src="assets/images/home/hero-image.jpg" alt="Couple photo" class="w-full h-64 md:h-96 object-cover rounded-lg">
   ```

### Image Naming Conventions
- Use lowercase, descriptive names: `haldi-ceremony.jpg`, `couple-portrait.jpg`
- Use hyphens instead of spaces: `wedding-ceremony.jpg` not `wedding ceremony.jpg`
- Optimize images for web (compress before uploading)

## Quick Edit Guide

### Common Tasks:

**1. Update Names and Dates:**
- File: `content/home.html`
- Find: `[Bride Name] & [Groom Name]`
- Find: `[Date - e.g., March 15-17, 2026]`

**2. Add Event Details:**
- File: `content/schedule.html`
- Update: Times, venues, and attire for each event

**3. Add Contact Information:**
- Files: `content/visa.html`, `content/info.html`, `content/qa.html`
- Find placeholders like: `[email@example.com placeholder]`

**4. Add Accommodation Details:**
- File: `content/info.html`
- Find: `[Hotel Name 1 - Luxury Option]` section

## Testing Your Changes

**IMPORTANT:** Due to browser security (CORS), you must run a local server to test the site. Opening `index.html` directly won't work.

### Option 1: Quick Start Script (Easiest)
```bash
./start-server.sh
```
Then open: http://localhost:8000

### Option 2: Manual Python Server
```bash
python3 -m http.server 8000
```
Then open: http://localhost:8000

### Option 3: VS Code Live Server (Recommended for editing)
1. Install "Live Server" extension in VS Code
2. Right-click `index.html` → "Open with Live Server"
3. Auto-refreshes when you save changes!

### What to Test:
1. Click through each tab to verify content loads correctly
2. Check that images display properly
3. Test on both desktop and mobile (resize browser window)
4. Verify all placeholders are editable

## Technical Notes

- Content files are loaded dynamically using JavaScript's `fetch` API
- Content is cached after first load for better performance
- The site works entirely client-side (no backend required)
- Perfect for GitHub Pages hosting

## Deployment

When ready to deploy:
1. Ensure all placeholder content is replaced with real information
2. Optimize all images (compress for web)
3. Test all tabs and links
4. Push to GitHub and enable GitHub Pages in repository settings

## Need Help?

- All placeholder text is marked with brackets: `[placeholder text]`
- Comments in HTML files indicate where to add content
- The `index.html` file handles all navigation - you rarely need to edit it
