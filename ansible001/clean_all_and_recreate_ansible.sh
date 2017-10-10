#!/bin/bash
RAIZ=$HOME/Documents/UTB/ComputacionNube/Ansible/Ansible202/
DIR=$RAIZ/ansible002
$DIR/clean_all.sh

ansible-playbook -i $RAIZ/hosts sql.yml
