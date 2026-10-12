FROM registry.ci.openshift.org/ocp/builder:rhel-9-base-openshift-4.16

ENV TOX_CONSTRAINTS_FILE="https://raw.githubusercontent.com/openshift/openstack-requirements/release-4.16/upper-constraints.txt"

RUN dnf install -y python3-devel python3-pip \
 && dnf clean all \
 && rm -rf /var/cache/yum \
 && python3 -m pip install tox
