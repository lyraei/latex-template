# Szablon projektu LaTeX

Uniwersalny punkt startowy dla dokumentów LaTeX: LuaLaTeX + biber, budowanie przez `latexmk`, konfiguracja VS Code.

## Wymagania

- TeX Live / MacTeX (`lualatex`, `latexmk`, `biber`)
- opcjonalnie: VS Code z LaTeX Workshop, [`tex-fmt`](https://github.com/WGUNDERWOOD/tex-fmt)

## Struktura

```
.
├── main.tex               # plik główny: klasa, metadane, kolejność rozdziałów
├── preamble/
│   ├── packages.tex       # pakiety
│   └── commands.tex       # własne makra i ustawienia
├── tex/
│   ├── streszczenie.tex
│   ├── 1-wprowadzenie/    # jeden katalog na rozdział
│   │   ├── main.tex       #   \section + \input podrozdziałów
│   │   └── cel.tex
│   ├── 2-przyklady/
│   └── 3-podsumowanie/
├── img/                   # obrazy (\graphicspath)
├── bibliografia.bib
├── build/                 # wynik kompilacji (ignorowany przez git)
├── .latexmkrc             # silnik, katalog wyjściowy, biber
├── .vscode/               # LaTeX Workshop + zadania budowania
├── .gitignore / .gitattributes / .editorconfig
└── tex-fmt.toml
```

## Budowanie

```bash
latexmk          # budowanie → build/main.pdf
latexmk -pvc     # tryb ciągły (przebudowa po zapisie)
latexmk -c       # usunięcie plików pomocniczych
latexmk -C       # jak wyżej + PDF
```

## Nowy projekt

1. Skopiuj katalog i usuń jego historię: `cp -R latex-template moj-projekt && rm -rf moj-projekt/.git`
2. `cd moj-projekt && git init`
3. Uzupełnij tytuł i autora w `main.tex`, podmień rozdziały w `tex/`.

Aby użyć innej klasy (np. `report`, `book`, własny `.cls`), zmień `\documentclass` w `main.tex`
i ewentualnie `\section` → `\chapter` w plikach `main.tex` rozdziałów.
