require "arom_2016_gem/version"
module Arom2016Gem
  class main
    def bonusdrink(n)
      if n % 3 == 0
         return n + 1
      else 
         return n
      end
    end
  end
end
