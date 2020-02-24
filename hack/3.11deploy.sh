#!/bin/env bash
# Copyright 2019 Red Hat, Inc. and/or its affiliates
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#all_files=()
#for file in deploy/crds/*crd.yaml; do all_files=( "${all_files[@]}" "${file}") ; done
#for file in deploy/*.yaml; do all_files=( "${all_files[@]}" "${file}") ; done

#for FILE in "${all_files[@]}"
#do
#  oc apply -f ${FILE}
#done

for file in deploy/crds/*crd.yaml
do
  #cmd [option] "$file" >> results.out
  oc apply -f ${file}
done

for file in deploy/*.yaml
do
  #cmd [option] "$file" >> results.out
  oc apply -f ${file}
done