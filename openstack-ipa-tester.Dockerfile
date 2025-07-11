FROM registry.ci.openshift.org/ocp/4.20:base-rhel9

RUN dnf install -y python3-devel python3-pip \
 && dnf clean all \
 && rm -rf /var/cache/yum \
 && python3 -m pip install tox
