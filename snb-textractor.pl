#!/usr/bin/perl -w

# SNB TEXTractor
# Process all 'Memo_*.snb' files in the current directory
# TODO: CLI extravaganza for more convenient input/output handling
# -- unpack the ZIP contents with 'ark'
# -- read only the extracted file 'snote.xml'
# -- write the text in '<s:t>...</s:t>' to 'Memo_*.txt'
# TODO: Create output in MarkDown format for further processing
 
use strict;
use warnings;

use Data::Dumper;
use File::Basename;
use File::Path;

foreach my $snb ( <Memo_*.snb> ) {
  my $memo = basename($snb,'.snb');
print Dumper($snb,$memo);
  # Extract SNote file; it's a multipart ZIP archive
  # '-b': run 'ark' in batch mode
  # '-a': auto-create extraction directory
  `ark -b -a $snb 2>&1`;
  # Process SNote XML contents
  open SNOTE, "$memo/snote/snote.xml" or next;
  my $contents;
  while (<SNOTE>) {
    $contents .= $_;
  }
print Dumper($contents);
  close SNOTE;
  # Cleanup
  rmtree( $memo );
}

exit 0
