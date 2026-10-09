# Module 25 — Building Mobile-Friendly Apps

Detailed Oracle LiveLabs source for the supplied Module 25 instructions. Primary application: **Employee Self-Service Portal (ESS)**. Estimated workshop duration: **35 minutes**. Target version: **Oracle APEX 26.1**.

## Structure

```text
apex-ai-hol25/
├── introduction.md
├── 1-enable-install-ess-pwa.md
├── 2-add-pwa-shortcuts-screenshots.md
├── 3-enable-push-notifications.md
├── 4-verify-mobile-review-apex-to-go.md
├── SCREENSHOT-CHECKLIST.md
├── AUTHORING-NOTES.md
├── images/                      # Annotated instructional screenshots
├── files/                       # Runtime screenshots and report repair SQL
└── workshops/
    └── tenancy/
        ├── index.html
        └── manifest.json
```

## Review the Workshop

Start with [Introduction](introduction.md), or use the LiveLabs launcher at `workshops/tenancy/index.html` after serving the repository over HTTP. The launcher follows Module 20's existing LiveLabs template and loads Oracle's shared CDN assets.

For a local preview, run this command from the `apex-ai-hol25` folder:

```bash
python3 -m http.server 8000 --bind 127.0.0.1
```

Then open `http://127.0.0.1:8000/workshops/tenancy/index.html`. This previews the lab instructions; PWA testing uses the separate ESS application runtime URL.

## Add Screenshots

126 instructional PNG references cover 99 of 105 numbered steps and are linked directly from the labs. Use [SCREENSHOT-CHECKLIST.md](SCREENSHOT-CHECKLIST.md) for exact coverage, remaining captures, and observed issues. Machine-readable coverage is in [SCREENSHOT-COVERAGE.json](SCREENSHOT-COVERAGE.json).

## Authoring Status

- Introduction and all four labs are authored with numbered tasks, expected results, and documentation links.
- The lab content follows the pasted attachment and the Module 25 section of the architecture page retrieved through the Oracle Central Confluence connector.
- Oracle APEX 26.1 terminology was checked against official documentation using the web search connector.
- Manifest paths, task numbering, screenshot inventory, and Markdown structure have been checked locally.
- Application 301 was configured and captured. Standalone installation, device permission, report repair, and a seven-row automation retry were verified.
- Installation confirmation, launcher shortcut interactions, received push notification and click remain pending.
- Saved promotional screenshot dimensions differ, and Leave Request raises an existing missing-routine error. See [MOBILE-REVIEW-NOTES.md](MOBILE-REVIEW-NOTES.md).
- The APEX icon library fallback was used; no course icon file was supplied.

See [AUTHORING-NOTES.md](AUTHORING-NOTES.md) for sources and environment-dependent details to verify while capturing screenshots.
