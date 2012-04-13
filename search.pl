#!/usr/bin/perl

@urls = (<>);

foreach $url (@urls){
	open (WSOUT, "curl ".$url." 2> /dev/null | ");
	while(<WSOUT>){
		if(/spotify:track/){
			s/<track href="//;
			s/ //g;
			s/">//;
			print $_;
			last;
		}
		
	}	

	close WSOUT;
}
