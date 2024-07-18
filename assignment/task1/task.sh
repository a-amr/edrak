#!/usr/bin/env sh
mkdir -p project/{src,docs,test}
touch project/{src/main.py,docs/README.md,test/test_main.py}

#echo "\`\`\`" >> project/docs/README.md


cat >> project/docs/README.md << EOF
## project docs
\`\`\`
mkdir -p project/{src,docs,test}
touch project/{src/main.py,docs/README.md,test/test_main.py}
\`\`\`
EOF
