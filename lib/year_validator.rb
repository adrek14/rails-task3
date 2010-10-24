
class YearValidator < ActiveModel::EachValidator
  # implement the method called during validation
  def validate_each(record, attribute, value)
    record.errors.add_to_base( "Podaj rok wydania w formacie yyyy" )   if ( value.to_s =~ /^\d{4}$/ ) == nil
    # default: record.errors[attribute] << "error_string", gives output like: Genre "error_string"
  end
end
