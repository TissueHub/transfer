.PHONY: clean copy restore

dump:
	mongodump \
		--host production-db-b1.meteor.io \
		--port 27017 \
		--username client-777bd242 \
		--password 757bfc54-9625-0564-cd12-649003bfdfd2 \
		--db tissuehub_meteor_com \
		--out dump

copy: dump
	scp -r \
		dump \
		robbinsd@tissuehub.org:dump

restore: copy
	ssh robbinsd@tissuehub.org mongorestore \
		--db TissueHub \
		dump/tissuehub_meteor_com/

clean:
	rm dump
