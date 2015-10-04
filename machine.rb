class Machine

    def purchase(amount)
      #1 btl = 2 = 2 * e_btl = 4* btl_c
      amount = amount.to_f

      btl = (amount / 2).to_f

      e_btl_value = (btl / 2).to_f.round(2)

      btl_c_value = (btl / 4).to_f.round(2)
      
      rdm_value = e_btl_value + btl_c_value

      btl_rdm = rdm_value / 2

      puts "Your initial investment of $#{amount} allows you to purchase #{btl} bottles. " \
      "It also yields you" + " $" + (e_btl_value + btl_c_value).to_f.to_s + \
       " worth of redeemable materials: #{btl} empty bottles with $ #{e_btl_value} value and #{btl} bottle caps "\
       "with $ #{btl_c_value} value.  These materials can then be exchanged for #{btl_rdm} more bottles!"

    end

    def check_caps(number)
      value = (number.to_f * 0.25)
      rdm_value = value / 2
      puts "You have #{number} bottle caps which have a $#{value} value.  This can be redeemed for #{rdm_value} bottles."
    end


    def check_bottles(number)
      value = (number.to_f * 1)
      rdm_value = value / 2
      puts "You have #{number} empty bottles which have a $#{value} value. This can be redeemed for #{rdm_value} bottles."
    end
end