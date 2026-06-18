#!/bin/bash
FUNCTION_NAME=$(circleci env subst "${PARAM_FUNCTION_NAME}")
S3_BUCKET=$(circleci env subst "${PARAM_S3_BUCKET}")
S3_KEY=$(circleci env subst "${PARAM_S3_KEY}")

ARGS=(
    lambda update-function-code
    --function-name "${FUNCTION_NAME}"
    --s3-bucket "${S3_BUCKET}"
    --s3-key "${S3_KEY}"
)

if [ "${PARAM_PUBLISH}" == "1" ]; then
    ARGS+=(--publish)
fi

if [ -n "${PARAM_QUALIFIER}" ]; then
    QUALIFIER=$(circleci env subst "${PARAM_QUALIFIER}")
    ARGS+=(--qualifier "${QUALIFIER}")
fi

echo "Updating Lambda function: ${FUNCTION_NAME}"
echo "Source: s3://${S3_BUCKET}/${S3_KEY}"
aws "${ARGS[@]}"
