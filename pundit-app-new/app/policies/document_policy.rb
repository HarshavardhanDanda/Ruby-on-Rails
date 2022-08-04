class DocumentPolicy < ApplicationPolicy 

  def show?
    if user.company == record.company 
      true 
    else  
      false  
    end  
  end 

  def update?
    if user.company == record.company 
      true 
    else  
      false  
    end  
  end 
  # def show? 
  #   company= user.company 

  #   return true if record.company==company 
  #   permissions=user.permissions 
  #   permissions.each do |permission| 
  #     return true if record.company == permission.company
  #   end
  #   false 
  # end


  # def update? 
  #   company=user.company 
  #   return true if record.company == company 

  #   permissions=user.permissions 
  #   permissions.each do |permission| 
  #     return true if record.company == permission.company && permission.can_write?
  #   end
  #   false
  # end

end