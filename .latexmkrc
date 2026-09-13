# Wspólna konfiguracja budowania: VS Code (LaTeX Workshop, tasks) i `latexmk` w terminalu.
@default_files = ('main.tex');
$pdf_mode      = 4;        # 4 = lualatex
$out_dir       = 'build';
$bibtex_use    = 2;        # biber tylko gdy potrzebny; `latexmk -C` usuwa też .bbl
$max_repeat    = 10;
$lualatex      = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$clean_ext     = 'synctex.gz run.xml bcf';
