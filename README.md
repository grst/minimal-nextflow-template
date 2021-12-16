# minimal nextflow template

This is a template for a minimal nextflow pipeline
that can be used instead of manually submitting a jobfile
to SGE for many input files. It contains a lot of instructions
and explanations for novice nextflow users and
can easily be adapted to more complex pipelines as the project grows.

## Structure

```
bin/                # contains custom scripts that are executed from the pipeline
tests/              # contains test files for this example, can be deleted down the road
main.nf             # the main workflow definition
nextflow.config     # configurations for the workflow and individual processes
run_pipeline.sh     # helper script to actually execute the pipeline with environment specific options
```

## Usage

Browse through the files, read the comments and adapt them for your needs.
To execute the pipeline, adjust the `run_pipeline.sh` script and exeute it using

```bash
./run_pipeline.sh
```


