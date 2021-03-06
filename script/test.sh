#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# shellcheck source=/dev/null
[ -r "script/bootstrap.sh" ] && source "script/bootstrap.sh"

ansible-playbook tests/test.yaml -i tests/inventory --syntax-check
ansible-playbook -i tests/inventory tests/test.yaml --connection=local