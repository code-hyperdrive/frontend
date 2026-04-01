# Ram Sharan Singh — Personal Website

A clean, minimalist static personal website for an engineering leader.
No build tools required. Pure HTML + CSS + a tiny JS nav script.

## File Structure

```
proj-frontend/
├── index.html               ← Home page
├── how-i-work.html          ← Engineering philosophy
├── experience.html          ← 4 case narratives
├── writing.html             ← Essay index
├── innovation.html          ← Patents & awards
├── now.html                 ← Current focus / open to
├── contact.html             ← Contact page
│
├── writing/
│   ├── on-building-things-that-matter.html    ← Full essay 1
│   └── the-managers-paradox.html              ← Full essay 2
│
├── css/
│   └── main.css             ← All styles (edit design tokens here)
│
└── js/
    └── nav.js               ← Mobile nav toggle only
```

## Customization Quick Reference

| What to change                  | Where                                       |
|---------------------------------|---------------------------------------------|
| Name, tagline                   | `index.html` hero section                   |
| Brand colors / fonts            | `css/main.css` → `:root` CSS variables      |
| Contact email / social links    | `contact.html`                              |
| Domain in canonical tags        | `<link rel="canonical">` in each HTML file  |
| Copyright year                  | Footer in each HTML file                    |
| "Now" page content              | `now.html` — update the date comment too    |
| New essays                      | Add file in `writing/`, link from `writing.html` |

## Deployment

### Option A — Netlify (recommended, free)

1. Drag and drop this entire folder onto [app.netlify.com/drop](https://app.netlify.com/drop)
2. Your site is live instantly at a `*.netlify.app` URL
3. To use a custom domain: Site settings → Domain management → Add custom domain

### Option B — Vercel (free)

```bash
npm install -g vercel
cd /path/to/proj-frontend
vercel
```

Follow prompts. No framework config needed — Vercel auto-detects static HTML.

### Option C — GitHub Pages (free)

1. Push this folder to a GitHub repository
2. Repo settings → Pages → Source: "Deploy from branch" → `main` / `/(root)`
3. Site is live at `https://<username>.github.io/<repo-name>/`
4. For a custom domain: add a `CNAME` file containing your domain name

### Option D — Any static host

Copy the entire folder to any web host that serves static files.
No server-side processing required.

## Adding a Custom Domain

After deploying, update the `<link rel="canonical">` tags in every HTML file
to reflect your actual domain:

```html
<!-- Change this in every file -->
<link rel="canonical" href="https://YOUR-DOMAIN.com/page.html" />
```

## Local Development

No build step needed. Open `index.html` directly in a browser,
or run a simple local server:

```bash
# Python 3
python3 -m http.server 8080

# Node.js (npx, no install needed)
npx serve .
```

Then visit `http://localhost:8080`

## SEO Checklist

- [x] Semantic HTML5 elements (`<nav>`, `<main>`, `<article>`, `<footer>`)
- [x] `<title>` and `<meta name="description">` on every page
- [x] Open Graph tags on home page
- [x] `<link rel="canonical">` on every page
- [x] Mobile-responsive (tested at 375px, 768px, 1200px+)
- [ ] Add your profile photo as `og:image` in `index.html`
- [ ] Submit sitemap to Google Search Console after deploying
- [ ] Add `robots.txt` once domain is confirmed

## Design Tokens (to change the look)

All design decisions live in `css/main.css` at the top of the file:

```css
:root {
  --accent: #1D4E7A;        /* ← Primary brand color. Try #2D6A4F for green, #7B3F00 for warm brown */
  --bg: #F9F8F5;            /* ← Page background */
  --font-serif: 'Playfair Display', Georgia, serif;   /* ← Heading font */
  --font-sans:  'Inter', system-ui, sans-serif;       /* ← Body font */
}
```
