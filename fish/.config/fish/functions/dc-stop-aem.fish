function dc-stop-aem
	docker-compose exec --user root $argv /opt/aem/crx-quickstart/bin/stop;
end
