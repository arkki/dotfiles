function rtc
    set -x DOCKER_HOST tcp://127.0.0.1:2475
    set -x TESTCONTAINERS_RYUK_DISABLED true
    set -x TESTCONTAINERS_CHECKS_DISABLE true
    set -x TESTCONTAINERS_DEFAULT_LABELS com.joyrex2001.kubedock.request-cpu=0.5,1\;com.joyrex2001.kubedock.request-memory=1Gi,2Gi
    set -x TESTCONTAINERS_HUB_IMAGE_NAME_PREFIX plan-docker.jfrog.dev-tools.relexsolutions.com
    set -x TESTCONTAINERS_HOST_OVERRIDE localhost
    
    ./gradlew $argv
end
