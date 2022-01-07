#!/bin/sh

echo "Adding clusters to ManagedClusterSet:"

declare -a array=($CLUSTER_LIST)
echo $array

echo "${array[@]}"
for cluster in "${array[@]}"
do
    echo "adding ${cluster} to submariner-clusterset-test ManagedClusterSet"
    oc label managedclusters ${cluster} cluster.open-cluster-management.io/clusterset=submariner-clusterset-test --overwrite
done