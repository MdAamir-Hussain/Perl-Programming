sub binary_search {
    my ($array_ref, $target) = @_;
    my $low = 0;
    my $high = @$array_ref - 1;

    while ($low <= $high) {
        my $mid = int(($low + $high) / 2);
        my $guess = $array_ref->[$mid];

        if ($guess == $target) {
            return $mid;  # Found the target, return its index
        } elsif ($guess < $target) {
            $low = $mid + 1;  # Adjust the lower bound
        } else {
            $high = $mid - 1;  # Adjust the upper bound
        }
    }

    return -1;  # Target not found
}

# Example usage:
my @sorted_array = (1, 3, 5, 7, 9, 11, 13, 15, 17);
my $target = 11;
my $index = binary_search(\@sorted_array, $target);

if ($index != -1) {
    print "Target $target found at index $index.\n";
} else {
    print "Target $target not found in the array.\n";
}
