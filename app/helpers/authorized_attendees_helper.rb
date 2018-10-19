module AuthorizedAttendeesHelper
  def authorized_attendees
    authorized_attendees = []
    @attendees.each do |a|
      if is_authorized?(a)
        authorized_attendees << a
      end
    end
    authorized_attendees.sort! { |a,b| a.last_name.downcase <=> b.last_name.downcase }
  end
end
