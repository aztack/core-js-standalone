#!/usr/bin/env bash
for i in dist/**; do
cat << EOF > "$i/package.json"
{
  "name": "$(basename $i)",
$(cat package.json | grep version | tr '\t,' ' ')
}
EOF
done