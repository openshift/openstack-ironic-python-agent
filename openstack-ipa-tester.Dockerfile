FROM ubi9

RUN dnf upgrade -y \
 && dnf install -y python3-devel python3-pip \
 && dnf clean all \
 && rm -rf /var/cache/yum \
 && python3 -m pip install tox

