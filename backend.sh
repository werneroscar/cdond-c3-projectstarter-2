#!/bin/bash
function a(){
    if curl "${API_URL}/api/status" | grep "ok"; then
        return 0
    else
        return 1
    fi
}

a