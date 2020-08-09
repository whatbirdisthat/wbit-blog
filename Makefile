genchromastyles:
	hugo gen chromastyles --style=native > static/syntax.css

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
	hugo deploy --baseURL "https://tqxr.net" --dryRun -e production

