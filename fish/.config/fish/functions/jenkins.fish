function jenkins
	docker run -d --name jenkins --hostname jenkins.local -p 8443:8443 -p 58888:58888 -v jenkins-vol:/var/jenkins_home arkki/jenkins $argv;
end
