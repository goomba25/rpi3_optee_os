docker build --force-rm -t optee-image \
--build-arg USERNAME=`whoami` \
--build-arg PASSWORD= \
--build-arg UID=$(id -u) \
--build-arg GID=$(id -g) \
.
