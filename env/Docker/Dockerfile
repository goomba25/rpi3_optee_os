#syntax=docker/dockerfile:1.2
FROM 	ubuntu:22.04

# Docker file info
LABEL 	author="Hanseung Seo"
LABEL 	version="1.0"
LABEL 	description="OPTEE build environment of rpi3"

ARG 	USERNAME
ARG 	PASSWORD
ARG 	UID
ARG 	GID

USER	root

ENV 	DEBIAN_FRONTEND=noninteractive
ENV 	DEBCONF_NOWARNINGS="yes"

# Change apt server
RUN 	sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list && \
	sed -i 's/security.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list && \
	apt-get update && apt-get -y upgrade

RUN 	apt install -y \
    	adb acpica-tools apt-utils autoconf automake \
	bash-completion bc bison build-essential \
	ccache cpio cscope curl cmake \
	device-tree-compiler dosfstools e2tools expect \
	fastboot fdisk flex ftp-upload \
	gdisk git-core \
	libattr1-dev libcap-ng-dev libfdt-dev libftdi-dev libglib2.0-dev libgmp3-dev libhidapi-dev \
	libmpc-dev libncurses5-dev libpixman-1-dev libslirp-dev libssl-dev libtool libusb-1.0-0-dev \
	make mtools netcat net-tools ninja-build parted python3-cryptography python3-pip \
	python3-pyelftools python3-serial python3-tomli python-is-python3 \
	rsync sudo swig udev unzip uuid-dev vim wget xdg-utils xsltproc xterm xz-utils zlib1g-dev

RUN 	apt install -y gcc-arm-linux-gnueabihf gcc-aarch64-linux-gnu

# Install repo tool
RUN 	curl https://storage.googleapis.com/git-repo-downloads/repo > ./repo && \
	install ./repo /usr/local/bin && \
	rm -rf ./repo

RUN     useradd --user-group --create-home --shell /bin/bash -G sudo ${USERNAME}
RUN     echo "${USERNAME}:${PASSWORD}" | chpasswd

RUN     ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
ENV     LANG=en_US.UTF-8

USER    ${USERNAME}
WORKDIR /home/${USERNAME}

CMD	/bin/bash
