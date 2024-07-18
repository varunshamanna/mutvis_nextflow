process ref_index{
    label 'bwa_container'

    input:
    tuple path(reference)

    output:
    path(ref_index), emit: index

    script:
    """
    mkdir index
    bwa index -p index/${reference.baseName} $reference
    """
}