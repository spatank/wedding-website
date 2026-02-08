# Indian Wedding Website

## Project Overview
Single-page wedding website for a Maharashtrian wedding in India, primarily for US friends attending. The site serves as both a practical guide and cultural introduction to help international guests navigate the wedding experience.

## Tech Stack
- Plain HTML/CSS/JavaScript
- Tailwind CSS (via CDN, no build process)
- Hosted on GitHub Pages
- No backend or RSVP functionality needed

## Design Approach

### Layout Structure
The site uses a three-layer design:

1. **Sticky Top Navigation**
   - Fixed tabs for: Home | Schedule | Maharashtrian Wedding | Visa Info | Useful Info | Q&A
   - Always visible at top of page
   - Switches content in the main card on click

2. **Fixed Decorative Background Layer**
   - Subtle traditional Indian motifs, patterns, or warm gradient
   - Remains stationary while content scrolls over it
   - Should not compete with readability

3. **Scrollable Content Card**
   - Centered card (max-width ~900-1000px) 
   - White/off-white background for readability
   - Contains all tab content
   - Scrolls independently while background stays fixed

### Design Aesthetic
- **Vibrant but elegant**: Traditional Indian wedding colors (marigold orange, deep red, gold accents)
- **Clean typography**: Readable and modern
- **Mobile-friendly**: Responsive design
- **Visual interest**: Uses images, sections, spacing to create hierarchy

## Site Structure & Content

### 1. Home
- Hero section with names, date, location
- Welcome message for guests
- Brief intro to the celebration

### 2. Schedule
- Timeline of all wedding events
- Each event as its own section with:
  - Time and venue
  - What-to-wear guidance
  - Brief description
  - Optional small icons or images

### 3. Maharashtrian Wedding
- Cultural context and explanations for US guests
- Multi-day event breakdown with sections for each day:
  - Day 1: Pre-wedding events (Haldi, Mehendi, etc.)
  - Day 2: Main ceremony rituals
  - Day 3: Reception/other events
- Each section includes:
  - Ritual explanations
  - Significance and traditions
  - Accompanying images
  - Consider alternating image-left/image-right layouts

### 4. Visa Info
- Visa requirements for US travelers to India
- Application process and timeline
- Important documents and links
- Tips and common questions

### 5. Useful Info
- Transportation options (airport pickup, local transport)
- Accommodation recommendations
- Local contacts and emergency numbers
- Currency exchange and local SIM cards
- Basic Marathi phrases
- Weather and what to pack

### 6. Q&A
- Common questions about:
  - Dress code specifics
  - Gift etiquette
  - Cultural do's and don'ts
  - Dietary information
  - Photography guidelines
- Living document that can be updated as questions come in

## Technical Notes

### Content Organization
- Each tab's content can have multiple internal sections
- Use Tailwind spacing utilities (mb-8, mb-12) for clear section breaks
- Consider subtle dividers or alternating backgrounds for visual hierarchy
- Images should be optimized for web (compressed, appropriate dimensions)

### Navigation Behavior
- Clicking a tab swaps content inside the scrollable card
- No page scrolling to sections (content stays within card)
- Active tab should be visually indicated

### Responsive Design
- Mobile: Stack sections vertically, simplify navigation
- Tablet/Desktop: Full layout with side-by-side content where appropriate

## Timeline
Wedding in ~1 month. Need quick development with polished, professional result.

## Developer Background
First web development project, but comfortable with code (ML Engineer). Prefer clear, well-commented code for easy customization.

## Development Approach
1. Build initial structure with placeholder content
2. Iterate on design and styling
3. Fill in actual wedding details and images
4. Test on mobile and desktop
5. Deploy to GitHub Pages