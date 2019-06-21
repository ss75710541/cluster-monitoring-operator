FROM openshift/origin-base:v3.11

ENV GOPATH /go
ENV PATH="${PATH}:${GOPATH}/bin"
RUN mkdir $GOPATH

COPY . $GOPATH/src/github.com/openshift/cluster-monitoring-operator

RUN yum install -y golang make git

RUN cd $GOPATH/src/github.com/openshift/cluster-monitoring-operator 

RUN go get -v github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb
RUN go get github.com/google/go-jsonnet/cmd/jsonnet
RUN make pkg/manifests/bindata.go
RUN make operator-no-deps
RUN cp $GOPATH/src/github.com/openshift/cluster-monitoring-operator/operator /usr/bin/

LABEL io.k8s.display-name="OpenShift cluster-monitoring-operator" \
      io.k8s.description="This is a component of OpenShift Container Platform and manages the lifecycle of the Prometheus based cluster monitoring stack." \
      io.openshift.tags="openshift" \
      maintainer="Frederic Branczyk <fbranczy@redhat.com>"

# doesn't require a root user.
USER 1001

ENTRYPOINT ["/usr/bin/operator"]
