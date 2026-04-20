# Conversational AI Lab at UIUC Website

Forked from the Allan Lab template (Leiden University). See `aboutwebsite.md` for the template's own docs.

Copyright Allan Lab. Code released under the MIT License.

---

## How to update (entirely via github.com — no local setup needed)

Every workflow below can be completed through GitHub's web editor. When you commit to `main`, GitHub Pages rebuilds in ~1 minute and the change goes live.

**For file edits**: open the file on github.com, click the pencil icon, make changes, "Commit changes" at the bottom.
**For uploading images**: navigate to the target folder on github.com, click **Add file → Upload files**, drop your image, "Commit changes".

### 1. Add a carousel image

1. Upload a ~3:2 JPEG to `images/slider/` via **Add file → Upload files**. 1800×1200 or larger works well.
2. Edit `_pages/home.md`, find the `<div class="carousel-inner">` block, add one item per image:
   ```html
   <div class="item">
       <img src="{{ site.url }}{{ site.baseurl }}/images/slider/your-photo.jpg" alt="Short description" />
   </div>
   ```
   Indicator dots regenerate automatically; each page load picks a random starting slide.

### 2. Add a team member

1. Upload a ~square portrait to `images/convai_members/` (the CSS will crop it into a circle).
2. Edit the YAML for your role — `_data/faculty.yml`, `postdoc.yml`, `phd_students.yml`, `ms_students.yml`, or `alumni_members.yml`:
   ```yaml
   - name: Jane Doe
     photo: jane-doe.jpg
     webpage: https://jane.example.com
     email: jdoe@illinois.edu
     info: IEEE Student Member                 # optional orange pill; omit to hide
     number_educ: 2                            # 1 or 2; omit if none
     education1: MS UIUC
     education2: BS Purdue
     has_past_aff: 1
     past_aff: Amazon, Google Research
     has_research_interests: 1
     research_interests: Multi-agent LLMs
     has_hobbies: 1
     hobbies: Biking, Photography
   ```
   Required fields: `name`, `photo`, `webpage`, `email`. Position in YAML = position on the page.

### 3. Add a project

Edit `_pages/projects.md`. Inside the `<div class="project-list" markdown="1">` wrapper, add:
```markdown
### Your Project Title. ###

<b>Team:</b> UIUC (Lead), Collaborators

<b>Description:</b> One or two sentences, with <a href="...">links</a> as needed.
```
Numbering (01, 02…) is automatic. Keep the trailing `### ... and more.` heading at the bottom.

### 4. Add a preprint or publication

Edit `_data/preprint.yml` (preprints) or `_data/publist.yml` (accepted):
```yaml
- title: "Your Paper Title"
  authors: First Last, First Last, Dilek Hakkani-Tür
  link:
    url: https://arxiv.org/abs/2601.12345
    display: Preprint. 2026.                # or "Annual Meeting of the ACL. 2026."
  highlight: 1
```
Newest first. Move entries from `preprint.yml` to `publist.yml` when accepted.

### 5. Add a blog

1. Upload a cover image to `images/pubpic/`.
2. Edit `_data/bloglist.yml`:
   ```yaml
   - title: "Your Blog Title"
     image: your-cover.png
     description: "One-paragraph summary shown on /blogs/."
     authors: First Last, First Last
     date: Jan 15, 2026
     link:
       url: https://yourdomain.example.com/post
     highlight: 1
   ```
   Only entries with `highlight: 1` render.

### 6. Feature a tweet

Edit **only** `_data/featured_tweets.yml` — a GitHub Action handles the rest. Add a line at the top (newest first):
```yaml
- url: https://x.com/convai_uiuc/status/2044086476074279243
```
When you commit this file, `.github/workflows/refresh-tweets.yml` runs, fetches tweet data (author, avatar, text, date, images, repost flag) from X's public oEmbed + syndication endpoints, and commits `_data/tweets_rendered.yml` back to the branch. That second commit triggers the Pages rebuild. End-to-end takes ~2 minutes.

**Verifying it worked**: on the repo page, the **Actions** tab shows the "Refresh tweets" run. If it's green, the tweet is live.

Reposts are detected automatically (any URL whose handle isn't `convai_uiuc`). Keep the list capped around 15; the home sidebar auto-fits up to 12 to the left column's height.

**Bulk-add from the profile**: while logged into `https://x.com/convai_uiuc`, scroll to load the tweets you want, open DevTools (F12 → Console), paste:
```js
copy([...document.querySelectorAll('article a[href*="/status/"]')]
  .map(a => a.href)
  .filter((h, i, a) => /\/status\/\d+$/.test(h) && a.indexOf(h) === i)
  .map(u => `  - url: ${u}`).join('\n'));
```
Paste the clipboard contents into `_data/featured_tweets.yml` on github.com, commit.

---

## Running the dev server locally (optional)

Only needed if you want to preview changes before pushing. All the workflows above work fine without it.

```bash
bundle install --path vendor/bundle
RUBYOPT="-r$(pwd)/.ruby34_compat.rb" bundle exec jekyll serve --livereload
```
Then http://127.0.0.1:4000/. Drop the `RUBYOPT` line on Ruby 3.x.
