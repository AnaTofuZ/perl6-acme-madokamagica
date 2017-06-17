use v6.c;
unit class Acme::MadokaMagica:ver<0.0.1>;

class Acme::MadokaMagica{
   
    has $.name;

    my @KyoSaya = < SakuraKyoko MikiSayaka>;
    my @MadoHomu = < KanameMadoka AkemiHomura>;
    my @Alone = < TomoeMami>;

    my %mem = (
        mami => "TomoeMami",
        madoka => "KanameMadoka",
        sayaka => "MikiSayaka",
        kyoko => "SakuraKyoko",
#        kyosaya => @KyoSaya,
#        madohomu => @MadoHomu,
#        alone => @Alone,
    );

    method new ($name){
        my $human =%mem<$name>;
        my $pkg = "Acme::MadokaMagica::Character::$human";
        my @members;
        if(EVAL("use $pkg")){
            @members.push:$pkg;
        }
        return @members;
    }

}


=begin pod

=head1 NAME

Acme::MadokaMagica - blah blah blah

=head1 SYNOPSIS

  use Acme::MadokaMagica;

=head1 DESCRIPTION

Acme::MadokaMagica is getting Madoka Magica infomation.
This module is original Perl5 module.

=head1 AUTHOR

AnaTofuZ <anatofuz@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright 2017 AnaTofuZ

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
