#!/bin/bash
run_test () {
    printf "\n\n\n------------------------------------ $1 ------------------------------------\n\n\n"
    molecule test -s $1
}

run_test lighthouse_export_slashing_protection_db
run_test lighthouse_import_slashing_protection_db
run_test lighthouse_import_validator_keys_api
run_test lighthouse_import_validator_keys_cmd
run_test nimbus_export_slashing_protection_db
run_test nimbus_import_slashing_protection_db
run_test nimbus_import_validator_keys_api
run_test prysm_export_slashing_protection_db
run_test prysm_import_slashing_protection_db
run_test prysm_import_validator_keys_cmd
run_test teku_export_slashing_protection_db
run_test teku_import_slashing_protection_db
run_test teku_import_validator_keys_api
run_test teku_import_validator_keys_cmd
