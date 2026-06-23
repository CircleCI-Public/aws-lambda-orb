# aws-lambda Orb

[![CircleCI Build Status](https://circleci.com/gh/CircleCI-Public/aws-lambda-orb.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/CircleCI-Public/aws-lambda-orb) [![CircleCI Orb Version](https://badges.circleci.com/orbs/circleci/aws-lambda.svg)](https://circleci.com/developer/orbs/orb/circleci/aws-lambda) [![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/CircleCI-Public/aws-lambda-orb/master/LICENSE) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/orbs)

Deploy code to AWS Lambda functions from CircleCI. Uploads your deployment package to S3, then updates the Lambda function via the AWS CLI.

---

## Resources

[CircleCI Orb Registry Page](https://circleci.com/developer/orbs/orb/circleci/aws-lambda) - The official registry page of this orb for all versions, executors, commands, and jobs described.

[CircleCI Orb Docs](https://circleci.com/docs/orb-intro/#section=configuration) - Docs for using, creating, and publishing CircleCI Orbs.

### How to Contribute

We welcome [issues](https://github.com/CircleCI-Public/aws-lambda-orb/issues) to and [pull requests](https://github.com/CircleCI-Public/aws-lambda-orb/pulls) against this repository!

### Development Orbs

Prerequisites:

- An initial semver deployment must be performed in order for Development orbs to be published and seen in the [Orb Registry](https://circleci.com/developer/orbs).

A [Development orb](https://circleci.com/docs/orb-concepts/#development-orbs) can be created to help with rapid development or testing. To create a Development orb, change the `orb-tools/publish` job in `test-deploy.yml` to be the following:

```yaml
- orb-tools/publish:
    orb_name: circleci/aws-lambda
    vcs_type: << pipeline.project.type >>
    pub_type: dev
    # Ensure this job requires all test jobs and the pack job.
    requires:
      - orb-tools/pack
      - integration-test-params
    context: orb-publishing
    filters: *filters
```

The job output will contain a link to the Development orb Registry page. The parameters `enable_pr_comment` and `github_token` can be set to add the relevant publishing information onto a pull request. Please refer to the [orb-tools/publish](https://circleci.com/developer/orbs/orb/circleci/orb-tools#jobs-publish) documentation for more information and options.