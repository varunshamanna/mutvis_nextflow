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

process mapping{
    label 'bwa_container'

    input:
    tuple val(sample_id), path(short_reads1), path(short_reads2)
    path(index)

    output:


    script:
    """
    bwa mem 


}