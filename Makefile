
install:
	docker build --rm -t $(notdir $(shell pwd)) .
debug:	
	docker run -it -p 3000:3000 -v $(CURDIR):/app $(notdir $(shell pwd)) /bin/bash /app/debug
	#docker run -p 3000:3000 -e DEBUG=yes --name debugging-$(notdir $(shell pwd)) $(notdir $(shell pwd))
	sleep 1
shell:	
	docker run -it -p 3000:3000 -v $(CURDIR):/app $(notdir $(shell pwd)) /bin/bash /app/debug