
class NameValidator < ActiveModel::EachValidator
  # implement the method called during validation
  def validate_each(record, attribute, value)
    record.errors.add_to_base( "Podaj nazwę wykonawcy." )                           if value == "" 
    record.errors.add_to_base( "Nazwa wykonawcy jest za długa - max. 40 znaków." )  if value.length > 40 
  end
end
