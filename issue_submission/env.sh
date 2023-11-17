export XLSX_JSON={"storage_credentials": {"dbx-sc1": {"environment": "unity_catalog", "create_or_delete": "create", "resource_name": "dbx-sc1", "sc_role_arn": "arn:aws:iam::332745928618:role/dbx-role-external-assume", "sc_principal_name": "dev-contributors", "sc_principal_privileges": ["CREATE_EXTERNAL_LOCATION", "CREATE_EXTERNAL_TABLE", "READ_FILES", "WRITE_FILES"]}, "dbx-sc2": {"environment": "unity_catalog", "create_or_delete": "create", "resource_name": "dbx-sc2", "sc_role_arn": "arn:aws:iam::332745928618:role/dbx-role-external-assume", "sc_principal_name": "dev-contributors", "sc_principal_privileges": ["ALL_PRIVILEGES"]}}, "external_locations": {"dbx-el1": {"environment": "unity_catalog", "create_or_delete": "create", "resource_name": "dbx-el1", "el_s3_url": "s3://dbx-dev-bucket", "el_sc_name": "dbx-sc1", "el_principal_name": "dev-contributors", "el_principal_privileges": ["CREATE_EXTERNAL_TABLE", "CREATE_EXTERNAL_VOLUME", "CREATE_MANAGED_STORAGE", "READ_FILES", "WRITE_FILES"]}, "dbx-el2": {"environment": "unity_catalog", "create_or_delete": "create", "resource_name": "dbx-el2", "el_s3_url": "s3://dbx-unitycatalog-bucket", "el_sc_name": "dbx-sc2", "el_principal_name": "dev-contributors", "el_principal_privileges": ["ALL_PRIVILEGES"]}, "dbx-el3": {"environment": "unity_catalog", "create_or_delete": "create", "resource_name": "dbx-el3", "el_s3_url": "s3://dbx-prod-buckets", "el_sc_name": "dbx-sc1", "el_principal_name": "dev-contributors", "el_principal_privileges": ["ALL_PRIVILEGES"]}}, "catalogs": {"dbx-catalog1": {"environment": "unity_catalog", "create_or_delete": "create", "catalog_metastore_id": "dbx-catalog1", "resource_name": "dbx-catalog1", "el_resource_name": null, "catalog_principal_name": "dev-contributors", "catalog_principal_privileges": ["USE_CATALOG", "USE_SCHEMA", "APPLY_TAG", "EXECUTE", "MODIFY", "READ_VOLUME", "REFRESH", "SELECT", "WRITE_VOLUME", "CREATE_FUNCTION", "CREATE_MATERIALIZED_VIEW", "CREATE_MODEL", "CREATE_SCHEMA", "CREATE_TABLE", "CREATE_VOLUME"]}, "dbx-catalog2": {"environment": "unity_catalog", "create_or_delete": "create", "catalog_metastore_id": "dbx-catalog2", "resource_name": "dbx-catalog2", "el_resource_name": null, "catalog_principal_name": "dev-contributors", "catalog_principal_privileges": ["ALL_PRIVILEGES"]}}, "schemas": {"dbx-schema1": {"environment": "unity_catalog", "create_or_delete": "create", "resource_name": "dbx-schema1", "el_resource_name": "s3://dbx-dev-bucket", "catalog_name": "dbx-catalog1", "catalog_principal_name": "dev-contributors", "catalog_principal_privileges": ["ALL_PRIVILEGES"], "schema_principal_name": "dev-contributors", "schema_principal_privileges": ["USE_SCHEMA", "APPLY_TAG", "EXECUTE", "MODIFY", "READ_VOLUME", "REFRESH", "SELECT", "WRITE_VOLUME", "CREATE_FUNCTION", "CREATE_MATERIALIZED_VIEW", "CREATE_MODEL", "CREATE_TABLE", "CREATE_VOLUME"]}, "dbx-schema2": {"environment": "unity_catalog", "create_or_delete": "create", "resource_name": "dbx-schema2", "el_resource_name": "s3://dbx-unitycatalog-bucket", "catalog_name": "dbx-catalog2", "catalog_principal_name": "dev-contributors", "catalog_principal_privileges": ["ALL_PRIVILEGES"], "schema_principal_name": "dev-contributors", "schema_principal_privileges": ["ALL_PRIVILEGES"]}}}
export ENVIRONMENT=unity_catalog
export ISSUE_BRANCH_NAME=issue-6909659692-branch
export ISSUE_BRANCH_NAME_MAIN=issue-6909659692-main-branch
export ISSUE_RESOURCE_NAME=multiple_resource_request
export ISSUE_RESOURCE_TYPE=multiple
export ISSUE_REQUESTOR_EMAIL=robert-altmiller@databricks.com
export GITHUB_ISSUE_NUMBER=6909659692
export GITHUB_REPO_OWNER=robert-altmiller
export GITHUB_REPO_NAME=terraform_template_config
export GITHUB_REPO_URL=https://github.com/robert-altmiller/terraform_template_config.git
