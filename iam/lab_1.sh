1. Create group "developer-group": having AdministratorAccess policy attached.

2. Create user "piter": assign to "developer-group" group.

3. Login as "piter" and verify access to AWS Management Console.

4. Create group "testers-group" having ReadOnlyAccess policy attached.

5. Custom policy "deny-delete-s3" into group "testers-group".

6. Add user "piter" into "testers-group".

7. Login as "piter" and verify that "piter" can delete S3 buckets.