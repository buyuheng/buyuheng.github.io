\# Personal Homepage Maintenance Instructions



This repository contains my academic personal homepage generated with jemdoc.



\## Main goals



Help maintain:

\- homepage text

\- publications

\- news

\- student/project pages

\- CV and paper links

\- BibTeX entries

\- jemdoc formatting



\## Editing rules



\- Prefer minimal edits.

\- Preserve jemdoc syntax.

\- Do not edit generated HTML directly unless explicitly asked.

\- Edit `.jemdoc`, `.bib`, scripts, and assets instead.

\- Keep academic style concise and factual.

\- Do not invent paper titles, venues, coauthors, awards, students, or grants.

\- When adding publications, preserve author order exactly.

\- When adding links, check whether the local file exists.

\- After page/publication edits, run the build script (`.\scripts\build.ps1` on Windows or `./scripts/build.sh` in shell).

\- Report changed files and any build errors.



\## Homepage style



\- Use concise academic prose.

\- Avoid hype.

\- Keep news items short.

\- Use reverse chronological order for news and publications.

\- Use consistent naming: Yuheng Bu.

\- Avoid excessive em dashes.




\## Current source/build structure

\- Edit source pages under `src/jemdoc/`; root `*.html` files are generated output.
\- Keep generated root URLs stable, e.g. `index.html`, `publications.html`, `group.html`, and course pages.
\- Use `assets/images/`, `assets/cv/`, and `assets/papers/{journal,conference,preprints}/` for files linked from pages.
\- Use `yuheng.bib` as the publication database. It is organized by section comments: journal, other/preprint, conference, patent.
\- Build on Windows with `powershell -ExecutionPolicy Bypass -File .\scripts\build.ps1`; `scripts/build.sh` is also available for shell environments.

\## Publication page workflow

\- `src/jemdoc/publications.jemdoc` has sections in this order: Journal Publications, Preprints, Conference and Workshop Publications, Patents.
\- Put unpublished arXiv papers in Preprints / the `other` BibTeX section; use arXiv PDF links there unless a local PDF is explicitly provided.
\- For accepted papers, prefer official metadata pages over arXiv links when available. Keep local links for older IEEE conference papers unless asked otherwise.
\- ICLR papers should use OpenReview forum links rather than direct PDF links when available.
\- After publication edits, rebuild and check that local `href`/`src` targets exist.

\## Common tasks



\### Add a paper



When asked to add a paper:

1\. Add or update BibTeX in `yuheng.bib`.

2\. Add the publication to `src/jemdoc/publications.jemdoc`.

3\. Add paper/code/arXiv/project links if provided.

4\. Add a short news item to `src/jemdoc/index.jemdoc` only if the user asks or it is clearly important.

5\. Run the build script.

6\. Summarize the diff.



\### Add student or project



When asked to add a student or project:

1\. Update the relevant `.jemdoc` page.

2\. Keep descriptions factual.

3\. Do not infer personal details.



