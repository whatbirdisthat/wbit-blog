genchromastyles:
	hugo gen chromastyles --style=native > static/syntax.css

serve:
	hugo-server \
		-D \
		--disableFastRender \
		 --bind 192.168.56.105 \
		 --baseURL http://192.168.56.105:1313


clean:
	hugo --cleanDestinationDir

build:
	hugo deploy --baseURL "https://tqxr.net" --dryRun -e production

