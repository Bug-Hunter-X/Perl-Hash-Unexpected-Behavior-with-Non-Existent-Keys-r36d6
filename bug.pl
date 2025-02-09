my %hash = ( a => 1, b => 2, c => 3 );

print $hash{d}; # This will print nothing, not undef

my $value = $hash{d};
if (defined $value) { print "defined" } else { print "undef"} # This will print undef

#The unexpected behavior is that accessing a non-existent key in a Perl hash does not throw an error, but rather returns an empty string. This can be problematic if you are not checking for the existence of the key before accessing it.

# Consider this:
my $key = 'x';
print $hash{$key}; #prints nothing

if ($hash{$key}) {print "true"}; #prints true