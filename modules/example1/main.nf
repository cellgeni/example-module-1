process Duplicate {
    input:
        path(file)
    output:
        path("duplicated*")
    script:
        """
        duplicate.sh ${file} duplicated_${file}
        """
}

process Triplicate {
    input:
        path(file)
    output:
        path("triplicated*")
    script:
        """
        triplicate.sh ${file} triplicated_${file}
        """
}