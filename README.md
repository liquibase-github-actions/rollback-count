# Liquibase Rollback Count Action
Official GitHub Action to run Liquibase Rollback Count in your GitHub Action Workflow. For more information on how rollback count works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Rollback Count
Rollback the specified number of changes made to the database
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/rollback-count@v4.21.1
  with:
    # The root changelog file
    # string
    # Required
    changelogFile: ""

    # The number of changes to rollback
    # int32
    # Required
    count: ""

    # The JDBC database connection URL
    # string
    # Required
    url: ""

    # 
    # string
    # Optional
    changeExecListener: ""

    # Fully-qualified class which specifies a ChangeExecListener
    # string
    # Optional
    changeExecListenerClass: ""

    # Path to a properties file for the ChangeExecListenerClass
    # string
    # Optional
    changeExecListenerPropertiesFile: ""

    # 
    # string
    # Optional
    changelogParameters: ""

    # Context string to use for filtering
    # string
    # Optional
    contexts: ""

    # 
    # string
    # Optional
    database: ""

    # The default catalog name to use for the database connection
    # string
    # Optional
    defaultCatalogName: ""

    # The default schema name to use for the database connection
    # string
    # Optional
    defaultSchemaName: ""

    # The JDBC driver class
    # string
    # Optional
    driver: ""

    # The JDBC driver properties file
    # string
    # Optional
    driverPropertiesFile: ""

    # Label expression to use for filtering
    # string
    # Optional
    labelFilter: ""

    # Password to use to connect to the database
    # string
    # Optional
    password: ""

    # Rollback script to execute
    # string
    # Optional
    rollbackScript: ""

    # 
    # bool
    # Optional
    skipDatabaseStep: ""

    # Username to use to connect to the database
    # string
    # Optional
    username: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase rollback count action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/rollback-count@v4.21.1
    with:
      changelogFile: ""
      count: ""
      url: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
