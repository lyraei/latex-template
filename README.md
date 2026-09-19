# Szablon LaTeX

```
main.tex               # klasa, metadane, \input
preamble/packages.tex  # pakiety
preamble/commands.tex  # własne makra
tex/main.tex           # treść
bibliografia.bib
img/
```

Budowanie: `latexmk` → `build/main.pdf` (LuaLaTeX + biber, konfiguracja w `.latexmkrc`).
