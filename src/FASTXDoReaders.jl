module FASTXDoReaders

export fasta_reader, fastq_reader

using FASTX: FASTA, FASTQ

"""
    fasta_reader(function, io; kwargs...)
"""
function fasta_reader(f::Function, io::IO; kwargs...)
    reader = FASTA.Reader(io; kwargs...)
    try
        f(reader)
    finally
        close(reader)
    end
end

"""
    fasta_reader(function, io; kwargs...)
"""
function fastq_reader(f::Function, io::IO; kwargs...)
    reader = FASTQ.Reader(io; kwargs...)
    try
        f(reader)
    finally
        close(reader)
    end
end

end
