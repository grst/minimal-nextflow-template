#!/bin/bash

# You can put any scripts (bash, R, Python, ...) in this directory and they will be automatically recognized by nextflow.
# You can just call them like "test_script.sh" in a process.
#
# Important:
#   * scripts need to be executable (chmod +x)
#   * scripts need to start with a shebang line indicating the programming language
#       - `#!/usr/bin/env python` for Python
#       - `#!/usr/bin/env Rscript` for R
#       - `#!/bin/bash` for bash.
#
echo "Hello $(cat $1) with $2 cpus!" > $1.result.txt
