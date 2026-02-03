#!/usr/bin/perl;
use strict;
use warnings;
my $ans = int(rand(101));
my $count = 1;
while (1) {
  print "Guess the number from 0 to 100: ";
  my $guess = <STDIN>;
  chomp $guess;
  if ($guess < $ans) {
    print "Too low!\n";
  } elsif ($guess > $ans) {
    print "Too high!\n";
  } else {
    print "Correct!\nGuesses taken: $count\n";
    last;
  }
  $count++;
}