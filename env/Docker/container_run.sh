docker run -it -d \
-h optee \
-v /Users/$(whoami)/.ssh:/home/$(whoami)/.ssh \
-v /Users/$(whoami)/WorkSpace/Docker/optee:/home/$(whoami)/Workspace \
-v /dev/:/dev/ \
--net=host \
--name optee-container \
optee-image
