#!/usr/bin/env bash

# Deploy the configuration to the nodes
talosctl apply-config -n 10.1.1.61 -f ./clusterconfig/morgoth-cirdan.jahanson.tech.yaml
talosctl apply-config -n 10.1.1.62 -f ./clusterconfig/morgoth-elrond.jahanson.tech.yaml
talosctl apply-config -n 10.1.1.63 -f ./clusterconfig/morgoth-galadriel.jahanson.tech.yaml
talosctl apply-config -n 10.1.1.41 -f ./clusterconfig/morgoth-narya.jahanson.tech.yaml
talosctl apply-config -n 10.1.1.42 -f ./clusterconfig/morgoth-nenya.jahanson.tech.yaml
talosctl apply-config -n 10.1.1.43 -f ./clusterconfig/morgoth-vilya.jahanson.tech.yaml
