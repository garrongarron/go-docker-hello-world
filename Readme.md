# New project

For a new blank project is mandatory count with `go.mod` and `go.sum` files.


## go.mod and go.sum missed
If the those files are missed follow the next steps.

Create `go.mod` file
So to create a `go.mod` file run the following command.

```
go mod init project_name
```

Or create a `go.mod` file with the following content

```
module project_name

go 1.18
```

And create and empty `go.sum` file.

Once the project count with `go.mod` and `go.sum` files then it can build up the project

# Building

To build up and run the project execute the following command.
```
docker-compose up -d
```

To stop the application following command.
```
docker-compose down
```

# configure

To configure the building and execution check the `docker-compose.yml` file.

```
command: 'sh -c "cd main/core &&  go build -o /core && /core"'
```