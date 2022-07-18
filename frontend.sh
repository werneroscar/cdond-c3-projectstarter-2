#!/bin/bash
function a(){
    URL="http://udapeople-${CIRCLE_WORKFLOW_ID:0:7}.s3-website-us-east-1.amazonaws.com/#/employees"
    echo ${URL}
    if curl -s ${URL} | grep "Welcome"; then
        #Change this to 0 after the job fails
        return 0
    else
        return 1
    fi
}

a