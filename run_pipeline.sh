#!/bin/bash
#
# Use this script to actually run the pipeline. Usage
# 	./run_pipeline.sh
#
# Here you can pass additional options that are specific to
# the system you are running on.
#
#  -w 		Path to the work dir. Can become quite big and should be in myScratch
#  -resume 	Makes sure the pipeline continues where it left off if something breaks
#  -profile 	Use our institutional profile which tells nextflow how to submit to the cluster

nextflow run main.nf \
	-w work \
	-resume \
	# -profile icbi

