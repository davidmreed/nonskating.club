build:
	zola build

render: build
	#!/usr/bin/env bash
	for guide in public/guides/*/index.html; do
		base="$(basename $(dirname $guide))"
		weasyprint "$guide" "$(dirname $guide)/$base.pdf" \
			-s build-assets/print.css -s static/statsbook.css	
		pandoc -r html -w epub \
				--toc --lua-filter build-assets/epub.lua \
				--css build-assets/epub.css \
			    --css static/statsbook.css \
			    --metadata-file build-assets/epub-metadata.yaml \
				-M "publisher=https://nonskating.club/guides/$base/" \
				-M "author=$(yq --front-matter=extract '.extra.author' content/guides/$base.md)" \
				-M "date=$(yq --front-matter=extract '.date' content/guides/$base.md)" \
			    "$guide" -o "$(dirname $guide)/$base.epub"
	done

watch:
	#!/usr/bin/env bash
	inotifywait -m -r . \
		--exclude "(.*\\.pdf$)|public|justfile|\\.git" \
		-e close_write,move,create,delete \
	| while read -r directory events filename; do
		pkill -f zola
		just render
		zola serve
	done
