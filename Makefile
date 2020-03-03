all: 23/ballots.csv 23/cities.csv

23/ballots.csv:
	curl https://media23.bechirot.gov.il/files/expb.csv \
	    | iconv -f windows-1255 -t utf-8 \
	    > $@

23/cities.csv:
	curl https://media23.bechirot.gov.il/files/expc.csv \
	    | iconv -f windows-1255 -t utf-8 \
	    > $@

.PHONY: 23/ballots.csv 23/cities.csv
