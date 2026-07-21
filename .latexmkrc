# $jobname = 'rkc_mod02_CO4835';

add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');
sub run_makeglossaries {
    my ($base_name) = @_;
    my $cmd = "makeglossaries \"$base_name\"";
    return system($cmd);
}

$clean_ext .= " acr acn alg glg glo gls";

$bibtex_use = 2;
