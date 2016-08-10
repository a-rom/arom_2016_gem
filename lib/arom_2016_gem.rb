require "arom_2016_gem/version"
class Main
def bonusdrink(n)
  t = n + n / 3
  return t
end

n = ARGV[0].to_i

main = Main.new
main.bonusdrink(n)
end
