#!/bin/bash

USER_NAME="eb-gh-actions-user"

aws iam create-user --user-name "${USER_NAME}"
aws iam attach-user-policy --user-name "${USER_NAME}" --policy-arn "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebTier"
aws iam attach-user-policy --user-name "${USER_NAME}" --policy-arn "arn:aws:iam::aws:policy/AWSElasticBeanstalkManagedUpdatesCustomerRolePolicy"
# aws iam create-access-key --user-name "${USER_NAME}"
