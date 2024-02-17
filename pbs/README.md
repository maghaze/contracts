# PBs

ProtoBuf contacts

## Install `proto-buf` Dependencies (Go)

```bash
# protoc-gen-go
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest 

# protoc-grpc-gen-go
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

# install protoc compiler
PB_REL="https://github.com/protocolbuffers/protobuf/releases"
curl -LO $PB_REL/download/v25.3/protoc-25.3-linux-x86_64.zip
unzip protoc-25.3-linux-x86_64.zip -d $HOME/.local
```

## Generate `proto-buf` Files (Go)

```bash
./generate
```
