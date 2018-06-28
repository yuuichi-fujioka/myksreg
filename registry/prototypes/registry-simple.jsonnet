// @apiVersion 0.1
// @name work.fujioka.pkg.registry-simple
// @description Deploy a simple docker private registry
//   This is *Not* Cache registry
// @shortDescription A simple docker registry
// @param name string Metadata name for each of the deployment components

local k = import 'k.libsonnet';
local registry = import 'myksreg/registry/registry.libsonnet';

{}
