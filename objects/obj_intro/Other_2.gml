/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

myseq = sequence_create();
myseq.length = 120;
myseq.loopmode = seqplay_pingpong;
var mytracks = array_create ( 1 );
mytracks[ 0 ] = sequence_track_new(seqtracktype_graphic);