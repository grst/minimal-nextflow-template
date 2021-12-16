// Use DSL to build modular pipelines. 
// See https://www.nextflow.io/docs/latest/dsl2.html
nextflow.enable.dsl = 2


// You can add multiple independent processes like this here
process test_script {

    // input channels can be paths or values
    // Check out https://www.nextflow.io/docs/latest/channel.html for more details
    input:
    path input_file

    // output channels can be generated from wildcards
    output:
    path "*_out.txt", emit: output_file

    // you can write bash commands here that will be executed on every file in the input
    // channel. Note that for every process a unique folder will be generaated. 
    // This input folder will automatically contain all files specified as input
    // channel. 
    script:
    """
    # we call a script from the `bin` directory here
    test_script.sh ${input_file} 
    """
}

// this is the main program. You can call multiple
// processes here and chain them together if necessary. Nextflow will 
// automatically figure out what to run in parallel. 
workflow {
    // build a channel from some files
    ch_input_data = Channel.fromPath("tests/data/*.txt")
    // pass the channel to the test process
    test_script(ch_input_data)
}
