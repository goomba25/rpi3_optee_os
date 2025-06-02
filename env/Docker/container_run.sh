docker run -it -d \
-h optee \
-v /home/$(whoami)/.ssh:/home/$(whoami)/.ssh \
-v /home/$(whoami)/Workspace/Docker/optee:/home/$(whoami)/Workspace \
-v /dev/:/dev/ \
--net=host \
--name optee-container \
optee-image
