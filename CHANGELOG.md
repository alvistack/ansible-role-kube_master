# Ansible Role for Kubernetes

## 2.7.0 - TBC

### Major Changes

  - Setting up cluster with external etcd nodes
  - Manually generate apiserver-etcd-client certs from etcd ca certs
  - Only use weave for single node tests (see <https://github.com/weaveworks/weave/issues/3438>)
  - Use flannel for multi node tests with LXD

## 2.6.0 - 2019-05-04

### Major Changes

  - Refine Travis CI Molecue test cases

## 2.5.0 - 2019-04-30

  - Initial release for Ansible 2.6 or higher
  - Support both Ubuntu 16.04/18.04 or RHEL/CentOS 7 or openSUSE Leap 15
