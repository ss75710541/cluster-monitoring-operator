module github.com/ss75710541/cluster-monitoring-operator

go 1.12

require (
	github.com/Jeffail/gabs v0.0.0-20190522085449-636cf72d5e3c
	github.com/ant31/crd-validation v0.0.0-20180801212718-38f6a293f140 // indirect
	github.com/beorn7/perks v1.0.0 // indirect
	github.com/blang/semver v0.0.0-20190414102917-ba2c2ddd8906 // indirect
	github.com/coreos/prometheus-operator v0.0.0-20180823125450-27b1eb72d9d9
	github.com/emicklei/go-restful v0.0.0-20190531125231-6ac3b8eb89d3 // indirect
	github.com/ghodss/yaml v0.0.0-20170327235444-0ca9ea5df545 // indirect
	github.com/go-kit/kit v0.9.0 // indirect
	github.com/go-openapi/spec v0.0.0-20190616183440-bdfd7e07daec // indirect
	github.com/gogo/protobuf v1.2.1 // indirect
	github.com/golang/glog v0.0.0-20141105023935-44145f04b68c
	github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c // indirect
	github.com/google/gofuzz v0.0.0-20190408174445-f140a6486e52 // indirect
	github.com/googleapis/gnostic v0.0.0-20190613170508-e73c7ec21d36 // indirect
	github.com/gregjones/httpcache v0.0.0-20190611155906-901d90724c79 // indirect
	github.com/hashicorp/go-version v0.0.0-20190422223945-ac23dc3fea5d // indirect
	github.com/hashicorp/golang-lru v0.0.0-20190227222458-7087cb70de9f // indirect
	github.com/imdario/mergo v0.0.0-20190123232827-7c29201646fa // indirect
	github.com/mailru/easyjson v0.0.0-20190626092158-b2ccc519800e // indirect
	github.com/mitchellh/hashstructure v0.0.0-20180828145349-a38c50148365 // indirect
	github.com/openshift/api v0.0.0-20180119195949-0d921e363e95
	github.com/openshift/client-go v0.0.0-20180227193119-1fa528d3be06
	github.com/openshift/cluster-monitoring-operator v0.0.0-20180910185104-f9e053a79703 // indirect
	github.com/petar/GoLLRB v0.0.0-20190514000832-33fb24c13b99 // indirect
	github.com/peterbourgon/diskv v2.0.1+incompatible // indirect
	github.com/pkg/errors v0.8.0
	github.com/prometheus/client_golang v1.0.0
	github.com/prometheus/common v0.6.0 // indirect
	github.com/prometheus/procfs v0.0.3 // indirect
	github.com/spf13/pflag v0.0.0-20180831151432-298182f68c66 // indirect
	golang.org/x/crypto v0.0.0-20190701094942-4def268fd1a4 // indirect
	golang.org/x/net v0.0.0-20190628185345-da137c7871d7 // indirect
	golang.org/x/sync v0.0.0-20190423024810-112230192c58
	golang.org/x/sys v0.0.0-20190712062909-fae7ac547cb7 // indirect
	golang.org/x/time v0.0.0-20190308202827-9d24e82272b4 // indirect
	gopkg.in/inf.v0 v0.0.0-20180326172332-d2d2541c53f1 // indirect
	k8s.io/api v0.0.0-20180628040859-072894a440bd
	k8s.io/apiextensions-apiserver v0.0.0-20180628053655-3de98c57bc05
	k8s.io/apimachinery v0.0.0-20180621070125-103fd098999d
	k8s.io/client-go v0.0.0-20180628043050-7d04d0e2a0a1
	k8s.io/kube-openapi v0.0.0-20190722073852-5e22f3d471e6 // indirect
)

replace github.com/prometheus/client_golang v1.0.0 => github.com/prometheus/client_golang v0.8.0
