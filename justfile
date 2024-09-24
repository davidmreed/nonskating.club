build:
	zola build --drafts

render: build
	#!/usr/bin/env bash
	for guide in public/guides/*/index.html; do
		base="$(basename $(dirname $guide))"
		weasyprint "$guide" "$(dirname $guide)/$base.pdf" \
			-s build-assets/print.css	-s static/statsbook.css	
		pandoc -r html -w epub \
				--toc --css build-assets/print.css \
			    --css static/statsbook.css \
			    --metadata-file build-assets/epub-metadata.txt \
				-M "publisher=https://nonskating.club/guides/$base/" \
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
		zola serve --drafts &
	done
