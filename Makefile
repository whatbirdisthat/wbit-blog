genchromastyles:
	hugo gen chromastyles --style=native > static/syntax.css

update-mermaid:
	curl -L https://unpkg.com/mermaid@latest/dist/mermaid.min.js -o static/mermaid/mermaid.min.js

# get-mermaid-latest-zipball:
# 	# this won't work on windows
# 	curl https://api.github.com/repos/mermaid-js/mermaid/releases/latest | grep zipball | awk '{print $2}' | sed 's/"//g' | sed 's/,//'

serve-container:
	hugo-server \
	-D \
	--disableFastRender \
	--bind 0.0.0.0 \
	--baseURL http://192.168.56.105:1313 \
	--navigateToChanged \
	--forceSyncStatic \
	--cleanDestinationDir

serve:
	hugo server \
	-D \
	--bind 0.0.0.0 \
	--baseURL http://10.1.10.7:1313 \
	--navigateToChanged

clean:
	hugo --cleanDestinationDir

build:
	hugo --minify --cleanDestinationDir

deploy:
	hugo deploy --baseURL "https://tqxr.net" --dryRun -e production

