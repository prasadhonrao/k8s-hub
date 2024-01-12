# .NET On Kubernetes

This is a sample app to demonstrate how .NET 8 application can be deployed using Kubernetes

## Setup SQL Server Using Docker

```
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=<YourStrong@Passw0rd>" \
 -p 1433:1433 --name sql1 --hostname sql1 \
 -d \
 mcr.microsoft.com/mssql/server:2022-latest

```
