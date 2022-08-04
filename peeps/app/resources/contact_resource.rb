class ContactResource < JSONAPI::Resource
  attributes :name_first, :name_last, :email, :twitter
  has_many :phone_numbers

  #filter :name_first 
  filter :first_name,
  apply: ->(records, value, _options) {
    
    if value.is_a?(Array)
      value.each do |val|
        records = records.first_name_like(val)
      end
      records
    else
      records.where(_model_class.arel_table[filter].matches(value))
    end
  }

  filter :last_name,
  apply: ->(records, value, _options) {
    if value.is_a?(Array)
      value.each do |val|
        records = records.last_name_like(val)
      end
      records
    else
      records.where(_model_class.arel_table[filter].matches(value))
    end
  }

  filter :full_name,
  apply: ->(records, value, _options) {
    if value.is_a?(Array)
      value.each do |val|
        records = records.where("CONCAT(contacts.name_first,' ',contacts.name_last) LIKE ?", "%#{val}%")
      end
      records
    else
      records.where(_model_class.arel_table[filter].matches(value))
    end
  }
end