#!/bin/bash

yq n  apiVersion "0.1"  > registry.yaml
yq w -i registry.yaml kind ksonnet.io/registry
yq w -i registry.yaml libraries.registry.path registry
yq w -i registry.yaml libraries.registry.version master

mkdir registry

yq n name registry > registry/parts.yaml 
yq w -i registry/parts.yaml apiVersion 0.0.1
yq w -i registry/parts.yaml kind ksonnet.io/parts
yq w -i registry/parts.yaml description "docker registry"
yq w -i registry/parts.yaml author "Yuuichi Fujioka <fujioka.yuuichi@gmail.com>"
yq w -i registry/parts.yaml contributors []
yq w -i registry/parts.yaml repository.type git
yq w -i registry/parts.yaml repository.url https://github.com/yuuichi-fujioka/myksreg
yq w -i registry/parts.yaml bugs.url https://github.com/yuuichi-fujioka/myksreg/issues
yq w -i registry/parts.yaml keywords[0] docker-registory
yq w -i registry/parts.yaml keywords[1] server
yq w -i registry/parts.yaml quickStart.prototype work.fujioka.pkg.registry-simple
yq w -i registry/parts.yaml quickStart.componentName registry
yq w -i registry/parts.yaml quickStart.flags.name registry
yq w -i registry/parts.yaml quickStart.flags.namespace default
yq w -i registry/parts.yaml quickStart.comment "Run a simple docker registry"
yq w -i registry/parts.yaml license "Apache 2.0"


mkdir registry/prototypes

touch registry/prototypes/registry-simple.jsonnet

touch registry/registroy.jsonnet

