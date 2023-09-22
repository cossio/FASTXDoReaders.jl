# FASTXDoReaders

This package exports two functions: `fasta_reader` and `fastq_reader`. These functions allow you to write things like:

```julia
using FASTXDoReaders: fasta_reader
using CodecZlib: GzipDecompressorStream

fasta_reader(GzipDecompressorStream(open("foo.fna.gz"))) do reader
    # ...
end
```

which then takes care of closing the stream automatically after the closure finishes running.