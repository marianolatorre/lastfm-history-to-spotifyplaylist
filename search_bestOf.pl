#!/usr/bin/perl

@urls = (<>);

foreach $url (@urls){
	open (WSOUT, "curl ".$url." 2> /dev/null | ");
	$count = 0;
	while(<WSOUT>){
		if(/spotify:track/){
			s/<track href="//;
			s/ //g;
			s/">//;
			print $_;
			$count++;
			if($count> 3){
				last;
			}
		}
		
	}	

	close WSOUT;
}
