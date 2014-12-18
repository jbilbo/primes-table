# Put your step definitions here

Then /^the multiplication table of primes must be printed on screen$/ do
  step %(the output should contain "2")
  step %(the output should contain "4")
  step %(the output should not contain "Usage")
  step %(the output should not contain "usage")
end

