
function orgPkgs() {
    local ORG_NAME=$1
    sfdx force:package:installed:list -u $ORG_NAME | jq -r '.result[] | select (.SubscriberPackageName | contains("salesforce-global")) | .SubscriberPackageName + ", " + .SubscriberPackageVersionNumber + ", " + .SubscriberPackageVersionId'  
}