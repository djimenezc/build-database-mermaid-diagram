
generate-mermaid:
	docker run \
		--mount type=bind,source="$(PWD)",target=/home/schcrwlr \
		--rm -it \
		schemacrawler/schemacrawler \
		/opt/schemacrawler/bin/schemacrawler.sh \
		--server=sqlite \
		--database=chinook-database-2.0.1.sqlite \
		--info-level=standard \
		--command script \
		--script-language python \
		--script mermaid.py


docker-ssh:
	docker run -it --rm --entrypoint='/bin/bash' schemacrawler/schemacrawler