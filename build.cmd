set GOSUMDB=off
set CGO_ENABLED=0
set GOOS=linux
cd ./qubership-apihub-test-service
go mod tidy
go mod download
go build .
cd ..
podman build ./ -t netcracker/qubership-apihub-test-service