#!/bin/bash

pbs_directory="$(cd "$(dirname "${BASH_SOURCE[0]}")"/.. && pwd)"

pbs=($(ls $pbs_directory/src))

for pb in "${pbs[@]}"; do
    basename="${pb%.*}"
    mkdir -p "$pbs_directory/go/$basename"
    protoc --proto_path="$pbs_directory/src" \
    --go_out="$pbs_directory/go/$basename" --go_opt=paths=source_relative \
    --go-grpc_out="$pbs_directory/go/$basename" --go-grpc_opt=paths=source_relative \
    "$pb"
done

cd "$pbs_directory/go" && go mod tidy
