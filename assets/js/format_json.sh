# Don't miss the dot after jq
cat input.json | jq . > output.json
gvim output.json
