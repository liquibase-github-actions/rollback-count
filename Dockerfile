# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.25.1
COPY rollback_count.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
