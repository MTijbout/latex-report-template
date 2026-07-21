# LaTeX Report Template

A reusable **GitHub template repository** for academic reports, built around a custom LaTeX document class (`my_class.cls`). Click **"Use this template"** above to start a new report from a consistent, working baseline — cover page, table of contents, bibliography, acronyms list, and example content — without setting any of it up from scratch.

## Features

- **Custom document class** (`my_class.cls`) based on the standard `report` class, with:
  - A4 paper, 11pt, restyled chapter headings with a rule underneath
  - A formal cover page with institution, course, student/G-number, and supervisor fields
  - Harvard-style citations via `biblatex` (`biber` backend, `authoryear` style)
  - Acronym/abbreviation list via the `glossaries` package, included in the table of contents
  - Sensible page margins, paragraph spacing, and table styling (`booktabs`)
  - Support for inserting full PDF pages (`pdfpages`) and multi-page tables (`longtable`)
- **Ready-made chapter structure** — title page, declaration, abstract, introduction, methodology, results, conclusion, appendix
- **A worked example chapter** (`chapters/template.tex`) demonstrating figures, tables, long tables, citations, acronyms, and lists — kept as a live reference while writing
- **`latexmk` build configuration** (`.latexmkrc`) that runs `makeglossaries` automatically for the acronym list
- **`.gitignore`** tuned for LaTeX build artifacts, so only source files are tracked

## Repository structure

```
.
├── main.tex                       # Entry point: sets title/author/cover-page fields, assembles chapters
├── my_class.cls                   # Custom document class
├── references.bib                 # Bibliography (BibTeX/biblatex entries)
├── .latexmkrc                      # latexmk build config (glossaries hook, biber)
├── .gitignore
├── chapters/
│   ├── title.tex                  # Custom cover page layout
│   ├── declaration.tex
│   ├── abstract.tex
│   ├── acronyms.tex                # \newacronym definitions
│   ├── introduction.tex
│   ├── methodology.tex
│   ├── results.tex
│   ├── conclusion.tex
│   ├── template.tex                # Worked examples: figures, tables, citations, lists
│   └── appendix_submitted_files.tex
└── figures/
    ├── .gitkeep
    └── ...                          # Example images/PDFs used in template.tex
```

## Getting started

### 1. Create a new report from this template
1. Click **Use this template → Create a new repository** on GitHub.
2. Choose a name and visibility for the new report repository.
3. Clone it locally:
   ```bash
   git clone git@github.com:<you>/<new-report-name>.git
   cd <new-report-name>
   ```

### 2. Fill in report-specific details
In `main.tex`, set:
```latex
\title{...}
\author{...}
\date{...}
\institution{...}
\affiliation{...}
\reporttype{...}
\coursename{...}
\gnumber{...}
\supervisor{...}
\degreetitle{...}
```
Then in `.latexmkrc`, uncomment and set `$jobname` to match the new report's name.

### 3. Write the content
- Replace the placeholder text in `chapters/introduction.tex`, `methodology.tex`, `results.tex`, and `conclusion.tex`.
- Add real bibliography entries to `references.bib` and acronyms to `chapters/acronyms.tex`.
- Add figures/PDFs to `figures/`.
- Remove `chapters/template.tex` (and its `\input` line in `main.tex`) once it's no longer needed as a reference — it's example content only, not part of the report.

### 4. Build
```bash
latexmk -C          # clean any previous build artifacts
latexmk -pdf main.tex
```
Confirm the PDF compiles with no errors before writing further content.

## Updating the template later

GitHub template repositories do **not** keep a live link to repositories created from them — changes made here afterward won't propagate automatically. If you fix something in `my_class.cls` or elsewhere:
1. Commit and push the fix in this repository.
2. Manually copy the corrected file(s) into any in-progress report repositories that need it.
3. Any report created via **Use this template** *after* the fix is pushed will include it automatically.

## Requirements

- A LaTeX distribution with `latexmk` and `biber` available (e.g. TeX Live, MacTeX)
- A LaTeX editor of your choice (e.g. TeXstudio)

## License

This LaTeX template is licensed under the **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License** ([CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)).

### Under this license, you are free to:
* **Share** — Copy and redistribute the material in any medium or format.
* **Adapt** — Remix, transform, and build upon the material for academic and personal use.

### Under the following terms:
* **Attribution** — You must give appropriate credit. Any usage or modification of this template must include the notice:  
  > *Based on the template by Marco Tijbout*
* **NonCommercial** — You may not use the material for commercial purposes or sell access to this template or products directly derived from it.
* **ShareAlike** — If you remix, transform, or build upon the material, you must distribute your contributions under the exact same license as the original.