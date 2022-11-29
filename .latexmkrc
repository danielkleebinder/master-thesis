# Use of glossaries, extra indexes, epstopdf, and other images conversions
# Thanks to Herb Schulz

$pdf_previewer = "evince %S";

# Custom dependency for glossary/glossaries package
# if you make custom glossaries you may have to add items to the @cus_dep_list and corresponding sub-routines
add_cus_dep( 'glo', 'gls', 0, 'makeglo2gls' );
sub makeglo2gls {
    system( "makeindex -s \"$_[0].ist\" -t \"$_[0].glg\" -o \"$_[0].gls\" \"$_[0].glo\"" );
}
# The glossaries package, with the [acronym] option, produces a .acn file when processed with (xe/pdf)latex and
# then makeindex to process the .acn into .acr and finally runs of (xe/pdf)latex to read in the .acr file. Unfortunately
# the glossary package does just the reverse; i.e. (xe/pdf)latex processing produces a .acr files and makeindex then
# is used to convert the .acr file to a .acn file which is then ... . This dependency assumes the glossaries package.
add_cus_dep( 'acn', 'acr', 0, 'makeacn2acr' );
sub makeacn2acr {
    system( "makeindex -s \"$_[0].ist\" -t \"$_[0].alg\" -o \"$_[0].acr\" \"$_[0].acn\"" );
}

