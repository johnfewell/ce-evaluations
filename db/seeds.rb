[
  {email: "float@f4te.com",  password: 'asdasd11', reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 44, current_sign_in_at: "2018-02-21 18:48:25", last_sign_in_at: "2018-02-20 21:03:24", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", superadmin_role: true, instructor_role: false, attendee_role: false, first_name: "John", last_name: "Fewell", title: "Mr", suffix: "FIS", provider: "facebook", uid: "10154983260426560"}
].each do |user_attributes|
  user = User.new(user_attributes)
  user.save!(validate: false)
end
