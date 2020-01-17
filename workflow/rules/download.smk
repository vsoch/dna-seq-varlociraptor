rule get_srr:
    output:
        "reads/{accession}_1.fastq",
        "reads/{accession}_2.fastq"
    conda:
        "envs/sra-tools.yaml"
    shell:
        "fasterq-dump {wildcards.accession}"
