include { Duplicate } from '../../modules/example1'
include { Triplicate } from '../../modules/example1'

workflow MULTIPLICATE {
    take:
        filelist
    main:
        // Read the file list from the input
        files = Channel.fromPath(filelist)
                       .splitText()
        
        // Duplicate files
        duplicated_files = Duplicate(files)
        duplicated_files.view()

        // Triplicate files
        triplicated_files = Triplicate(files)
        triplicated_files.view()

}