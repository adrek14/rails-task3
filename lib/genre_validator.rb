
class GenreValidator < ActiveModel::EachValidator
  # implement the method called during validation
  def validate_each(record, attribute, value)
    record.errors.add_to_base( "Podaj rodzaj wykonywanej muzyki." )   if value == "" 
    record.errors.add_to_base( "Rodzaj za długi - max. 40 znaków." )  if value.length > 40 
    # default: record.errors[attribute] << "error_string", gives output like: Genre "error_string"
  end
end
