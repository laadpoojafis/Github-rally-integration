arr=("WPT/wp-yp-config" "WPT/Environment_info" "WPT/yespay-qa-wpt-ipc-automation" "WPT/yespay-qa-automation-util" "WPT/wph-onlinepin-rewrap-client" "WPT/wph-epos-integration-test" "WPT/wp-device-driver" "WPT/wp-payment-kernel" "WPT/wph-wpg-off-txn-processor" "WPT/wph-conn-mgr" "WPT/wph-tms-contracts" "WPT/wph-tms" "WPT/wph-epos-common" "WPT/parent-auth-switch-contract" "WPT/wpt-commons-logging" "WPT/wph-pin-keyexchange" "WPT/wph-bna-db-api" "WPT/wph-bna-onboarding" "WPT/wph-bna-billing" "WPT/wph-bna-onboarding-contract" "WPT/wph-bna-ui" "WPT/wp-zinc" "WPT/wph-auth-switch" "WPT/wph-config-dev" "WPT/wph-config-ppe" "WPT/wph-elavon-contracts" "WPT/wph-elavon" "WPT/wph-epos" "WPT/wph-swagger-codegen" "WPT/yespay-psp-safenet-dev" "WPT/yespay-qa-automation-teh-mobile" "WPT/yespay-qa-wpt-ipc-swupgrade-automation" "WPT/wph-bna-wsclient" "WPT/wph-external-swagger-contracts" "WPT/wph-micro-bin-range" "WPT/wph-customer-rating" "WPT/wph-customer-rating-contract" "WPT/wpt-simple-project" "WPT/wpt-reference-project" "WPT/wph-alipay-automation" "WPT/wph-auth" "WPT/wpt_ipc_gui_automation" "WPT/wph-bna-ui-api-router" "WPT/wp-integrated-payment-client-3" "WPT/EMBOSS_Automation" "WPT/wph-settlement-automation" "WPT/BnA-Rewrite-UI-Automation" "WPT/wp-payment-kernel-integration-test" "WPT/PropertyManager" "WPT/ipc3-app" "WPT/wpt-qa-epos-automation" "WPT/wph-epos-ws" "WPT/wpt-qa-hpa-automation" "WPT/wpt-qa-ipc-accreditation-automation" "WPT/wpt-qa-api-automation" "WPT/wpt-qa-ipc-client-performance-automation" "WPT/yesgate" "WPT/wpt-qa-bna-services-automation" "WPT/wpt-qa-bna-ui-automation" "WPT/wpt-ipc3-app-automation" "WPT/wpt-qa-portals-automation" "WPT/wpt-emboss-soap-client" "WPT/apache-tomcat-gold-build" "WPT/devops-qa-ipc" "WPT/MUATStatus" "WPT/JenkinsBackup" "WPT/ALPS" "WPT/GlobalBlue-SA" "WPT/PPEUtils" "WPT/ipc3-app-contracts" "WPT/wph-yesgate-ws" "WPT/wph-yesgate-automation-ui" "WPT/wph-yesgate-automation-ws" "WPT/wph-yesgate-ui" "WPT/tms-infrastructure" "WPT/tms-upload-service" "WPT/tms-tests" "WPT/tms-url-service" "WPT/wph-mbh-boarding" "WPT/tms-contracts" "WPT/wpt-qa-dms-automation" "WPT/merchant_solution_stabilization" "WPT/ipc3-pointofsale" "WPT/IPC-2-CI-CD" "WPT/wph-storemanager-ws" "WPT/ipc-app-portal" "WPT/ipc2-installer" "WPT/ZincRegistration" "WPT/maven-ci-friendly" "WPT/tms-upload-service-client" "WPT/maven-ci-friendly-2" "WPT/ipc3-auth-infrastructure" "WPT/ipc3-payment-controller" "WPT/ipc3-app-portal" "WPT/ipc3-pointofsale-client" "WPT/wph-event-store" "WPT/wph-castor-framework" "WPT/wph-castor-framework-1.1" "WPT/wph-fintrax-reconciliation" "WPT/ipc3-login" "WPT/ipc3-payment-controller-client" "WPT/wph-emboss-database" "WPT/wph-virtual-terminal" "WPT/ipc3-control-center" "WPT/StoreManager" "WPT/wph-forex-service" "WPT/wph-services-contract" "WPT/PED-Simulator" "WPT/IPC3-AUTH-COMMONS" "WPT/DevOpsInternal" "WPT/MobileEVT" "WPT/DatabaseChanges" "WPT/ECOM" "WPT/EasyVWeb" "WPT/EasyVAPI" "WPT/ipc3-app-performance-test-sdk" "WPT/ipc3-emboss-simulator" "WPT/DeploymentDetails" "WPT/Softpos-RiskEngine" "WPT/Model_Pipeline_Project" "WPT/wph-content-management-contract" "WPT/wph-bna-vtonboarding" "WPT/softpos-red" "WPT/wpt-ims" "WPT/wph-transaction-state" "WPT/RallyLogs" "WPT/wph-access-pos" "WPT/bin-etl-contracts" "WPT/bin-etl" "WPT/bin-etl-db" "WPT/wph-access-worldpay-pos" "WPT/wph-emboss-simulator" "WPT/IPC3-SW-UPGRADE" "WPT/wph-nonsecure-mobileevt" "WPT/wpt-log-portal" "WPT/tms-upload-cli" "WPT/IPC3_Configuration_Portal_Automation" "WPT/lean-sdlc-reference-project" "WPT/Simulator_UI" "WPT/wph-automate-spos-key" "WPT/ips-auth-db-tools" "WPT/ipc3-sw-upgrade-automation" "WPT/wph-api-model" "WPT/rallyintegration" "WPT/venafi-rest-client")
for name in "${arr[@]}"
do 
curl --header "zsessionid:_5qkiIFxQaSYES9XL4aMNUFH2EeGMEiemV4EtMH4o" -H "Content-Type: application/json" -d '
{"SCMRepository":{"Name":"'"${name}"'",
"Description":"fo git repo '"${name}"'",
"SCMType":"git",
"Uri":null
}
}' https://rally1.rallydev.com/slm/webservice/v2.0/scmrepository/create > post.json
echo ${name}
echo "Printing POST Json" 
cat post.json
done
