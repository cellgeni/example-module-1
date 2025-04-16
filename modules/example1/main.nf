process Duplicate {
    input:
        path(file)
    output:
        path("duplicated.txt")
    script:
        """
        duplicate.sh ${file} duplicated.txt
        """
}

process Triplicate {
    input:
        path(file)
    output:
        path("triplicated.txt")
    script:
        """
        triplicate.sh ${file} triplicated.txt
        """
}