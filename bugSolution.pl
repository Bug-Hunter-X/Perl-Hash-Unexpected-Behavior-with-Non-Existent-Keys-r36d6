my %hash = ( a => 1, b => 2, c => 3 );

# Correct way to check for key existence and handle missing keys:
if (exists $hash{d}) {
  print "Key 'd' exists: ", $hash{d};
} else {
  print "Key 'd' does not exist.";
}

#Alternative using defined
my $value = $hash{d};
if (defined $value) { print "defined\n" } else { print "undef\n" }

my $key = 'x';
if (exists $hash{$key}) {print "true\n"}; #prints nothing
else {print "false\n"} #prints false