#!/bin/bash

echo "Building Playbook..."
pwsh -NoP -EP Bypass -C "& \"$(dirname "$PWD")/local-build.ps1\" -AddLiveLog -ReplaceOldPlaybook -Removals WinverRequirement, Verification -DontOpenPbLocation"
if [ $? -ne 0 ]; then
    if [ -z "$*" ]; then
        read -p "Press Enter to exit...: "
    fi
fi
