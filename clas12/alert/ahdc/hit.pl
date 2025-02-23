use strict;
use warnings;

our %configuration;

sub define_ahdc_hit
{
	# uploading the hit definition
	# keeping "ftof" to be able to run gemc simulation for a check
	my %hit = init_hit();
	$hit{"name"}            = "alrtdc";
	$hit{"description"}     = "alert ahdc hit definitions ";
	$hit{"identifiers"}     = "superlayer layer ahdccell";
	$hit{"signalThreshold"} = "0.5*MeV";
	$hit{"timeWindow"}      = "400*ns";
	$hit{"prodThreshold"}   = "1*mm";
	$hit{"maxStep"}         = "1*cm";
	$hit{"delay"}           = "50*ns";
	$hit{"riseTime"}        = "1*ns";
	$hit{"fallTime"}        = "2*ns";
	$hit{"mvToMeV"}         = 100;
	$hit{"pedestal"}        = -20;
	print_hit(\%configuration, \%hit);
}

sub define_myatof_hit
{
	# uploading the hit definition
	# keeping "ftof" to be able to run gemc simulation for a check
	my %hit = init_hit();
	$hit{"name"}            = "myatof";
	$hit{"description"}     = "myatof hit definitions ";
	$hit{"identifiers"}     = "sector superlayer layer paddle";
	$hit{"signalThreshold"} = "0.5*MeV";
	$hit{"timeWindow"}      = "400*ns";
	$hit{"prodThreshold"}   = "1*mm";
	$hit{"maxStep"}         = "1*cm";
	$hit{"delay"}           = "50*ns";
	$hit{"riseTime"}        = "1*ns";
	$hit{"fallTime"}        = "2*ns";
	$hit{"mvToMeV"}         = 100;
	$hit{"pedestal"}        = -20;
	print_hit(\%configuration, \%hit);
}

sub define_hit
{
	define_ahdc_hit();
	define_myatof_hit();
}
