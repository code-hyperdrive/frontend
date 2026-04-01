# Change Log — Ram Sharan Singh Personal Website

A human-readable record of every meaningful change made to the site.
Most recent changes appear at the top.

---

## v1.3 — 2026-04-02
**SEO Phase 1 + Phase 3 — Full technical foundation**

Technical changes:
- Fixed all canonical URLs from placeholder to ramsharans.com (all 9 pages)
- Created sitemap.xml (all 9 pages, with priority and changefreq)
- Created robots.txt (allows all crawlers, blocks _snapshots/, points to sitemap)
- Added JSON-LD Person schema to index.html (name, title, employer, location, skills, social links)
- Added JSON-LD WebSite schema to index.html
- Added JSON-LD Article schema to both essays (headline, author, dates, keywords)
- Added full Open Graph tags to all 9 pages (og:type, og:url, og:title, og:description, og:image, og:site_name, og:locale)
- Added article:* Open Graph tags to essay pages (author, published_time, tags)
- Added meta author, meta robots, meta keywords to all 9 pages
- Improved all meta descriptions with keyword-rich, click-worthy copy

Next step (Phase 2): Submit sitemap to Google Search Console and Bing Webmaster Tools

---

## v1.2 — 2026-03-31
**Web3Forms contact form added to contact page**

- Replaced static email display with a full contact form (email never shown publicly)
- Integrated Web3Forms API (free, 250 submissions/month)
- Fields: Name, Email, Topic (dropdown), Message
- Client-side validation with inline error messages
- Loading spinner during submission
- Inline success message on send (no page redirect)
- Inline error banner if submission fails
- Honeypot spam trap built in
- Social links (LinkedIn, GitHub) retained in left column
- Action required: replace `YOUR_ACCESS_KEY_HERE` in contact.html with real Web3Forms key

---

## v1.1 — 2026-03-31
**Added professional photo to home page hero**

- Added `images/photo.png` — AI-enhanced portrait (navy suit, NYC skyline background)
- Redesigned hero section into two-column layout: text left, photo right
- Added decorative offset border frame behind the photo
- Fully responsive: photo stacks above text on tablet/mobile
- Photo styled with `object-fit: cover`, subtle shadow, and border-radius

---

## v1.0 — 2025-03-31
**Initial build — complete site**

Pages created:
- Home (`index.html`) — hero, credibility bar, 3 highlight cards, writing teaser, CTA
- How I Work (`how-i-work.html`) — 5 leadership principles, optimize/avoid table
- Selected Experience (`experience.html`) — 4 case narratives (SurveyMonkey, McAfee, Philips, Intel)
- Writing (`writing.html`) — essay index + 3 article stubs
- Essay 1 (`writing/on-building-things-that-matter.html`) — ~1,000 words
- Essay 2 (`writing/the-managers-paradox.html`) — ~1,100 words
- Innovation (`innovation.html`) — 2 patents + 4 award stories
- Now (`now.html`) — current focus + open to section
- Contact (`contact.html`) — email, LinkedIn, GitHub links

Design:
- Color accent: Deep slate blue (#1D4E7A)
- Fonts: Playfair Display (headings) + Inter (body)
- Fully responsive — mobile, tablet, desktop

---
<!-- Add new entries above this line, newest first -->
