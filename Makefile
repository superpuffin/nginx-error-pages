all:
	python3 generate.py
clean:
	find . -maxdepth 1 -iname '[0-9][0-9][0-9].html' -not -iname '418.html' -exec rm \{\} \;
css:
	yarn run postcss --use autoprefixer --use cssnano -o ./_errors/main.min.css ./_errors/main.css
