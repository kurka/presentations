pandoc -t beamer --pdf-engine=xelatex -V theme:metropolis voices.md -o voices.pdf && evince voices.pdf
