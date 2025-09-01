#!/bin/bash

source util/optparse.bash

optparse.define short=f long=filename desc="The filename of the document to create" variable=file

source $( optparse.build )

hugo new $file -c ./content/summaries --kind paper-summaries
