#!/bin/sh -ux
#!/usr/bin/env bash

yum install epel-release -y
yum update -y
yum install ansible -y