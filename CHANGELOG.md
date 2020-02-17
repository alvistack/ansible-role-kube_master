# Ansible Role for Kubernetes Master

## 4.3.0 - TBC

### Major Changes

  - Migrate role name to lowercase or underline
  - Migrate group name to lowercase or underline
  - Migrate molecule `group_vars` to file
  - Split role as `kube_master` and `kube_node`

## 4.2.0 - 2020-02-13

### Major Changes

  - Migrate molecule driver to Libvirt
  - Migrate molecule verifier to Ansible
  - Support Ubuntu 19.10
  - Bugfix `coredns` with `_kubelet_resolv_conf`

## 4.1.0 - 2020-01-16

### Major Changes

  - Default `interpreter_python` with `python3`
  - Bugfix `python3-xml` not exists for openSUSE Leap 15.1
  - Bugfix `kubernetes_version` with other roles

## 4.0.0 - 2019-11-05

### Major Changes

  - Upgrade minimal Ansible support to 2.9.0
  - Upgrade Travis CI test as Ubuntu Bionic based

## 3.5.0 - 2019-10-06

### Major Changes

  - Support openSUSE Leap 15.1
  - Default with Python 3
  - Revamp molecule test with vagrant
  - Add kubelet `--node-ip` support for Vagrant
  - Add kube-proxy `--conntrack-max-per-core` support for LXD

## 3.4.0 - 2019-09-18

### Major Changes

  - Run molecule test manually on Travis CI
  - Improve default for `--kube-reserved`, `--system-reserved` and `--eviction-hard`

## 3.3.0 - 2019-08-27

### Major Changes

  - Update for RHEL 7
  - Add Vagrant test for RHEL 7
  - Restart service serially
  - Specify kubelet `--runtime-cgroups` and `--kubelet-cgroups`
  - Specify kubelet `--kube-reserved`, `--system-reserved` and `--eviction-hard`

## 3.2.0 - 2019-07-08

### Major Changes

  - Update LXD test profile for Kubernetes v1.15.0 support
  - Add dummy tasks and vars placeholder for multi OS support
  - Fix molecule `group_vars` with links
  - Replace `with_items` with `loop`
  - Replace `with_dict` with `var`
  - Replace `with_first_found` with `lookup('first_found')`
  - Update Vagrant test with `private_network`
  - Reduce hardcoded `ansible_default_ipv4`

## 3.1.0 - 2019-06-13

### Major Changes

  - Always include default variables from `vars/main.yml`
  - Always use `become: true` with molecule, especially for vagrant
  - Improve service restart implementation
  - Revamp multi node test with vagrant
  - Replace `inventory_hostname` with `ansible_hostname`
  - Better multinode test cases

## 3.0.0 - 2019-05-20

### Major Changes

  - Upgrade minimal Ansible support to 2.8.0
  - Improve handlers implementation
  - Restart service if templates changed
  - Setting up cluster with external etcd nodes
  - Manually generate apiserver-etcd-client certs from etcd ca certs
  - Join all remaining master nodes after first master node initialized
  - Manually test with worker node join by `kubeadm`
  - Use flannel for multi node tests with LXD

## 2.6.0 - 2019-05-04

### Major Changes

  - Refine Travis CI Molecue test cases

## 2.5.0 - 2019-04-30

  - Initial release for Ansible 2.6 or higher
  - Support both Ubuntu 16.04/18.04 or RHEL/CentOS 7 or openSUSE Leap 15
