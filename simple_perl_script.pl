# Please write a Perl script to generate 3 lines of standard output.
# The first line should output a random number between 1 and 10.
# The second line should output a random number between 1 and 1000.
# The third line should output your full name.


use strict;
use warnings;
use diagnostics;

use feature 'say';

my $ran_num_1 = 1 + int(rand 10);
my $ran_num_2 = 1 + int(rand 1000);

my $valid = 0;
my $user_name;
while (!$valid) { 
    print "What is your full name? ";
    $user_name = <STDIN>;
    chomp($user_name);

    if ($user_name ne "") {
        $valid = 1;
    }
}

my @data = ($ran_num_1, $ran_num_2, $user_name);
my $arr_size = @data;

foreach my $item (@data) {
    if ($item eq $data[@data - 1]) {
        say "Thank you $user_name, for your time and consideration! Good day!"
    } else {
        say "Random #: $item";
        sleep(1);
    }
}
