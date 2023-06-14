#!/usr/bin/env bash

# Deploy the configuration to the nodes
talosctl apply-config -n 10.1.1.61 -f ./clusterconfig/morgoth-galadriel.jahanson.tech.yaml
talosctl apply-config -n 10.1.1.62 -f ./clusterconfig/morgoth-elrond.jahanson.tech.yaml
talosctl apply-config -n 10.1.1.63 -f ./clusterconfig/morgoth-cirdan.jahanson.tech.yaml

talosctl apply-config -n 10.1.0.220 -f ./morgoth-nenya.jahanson.tech.yaml --insecure
talosctl apply-config -n 10.1.0.222 -f ./morgoth-vilya.jahanson.tech.yaml --insecure
talosctl apply-config -n 10.1.0.221 -f ./morgoth-narya.jahanson.tech.yaml --insecure
