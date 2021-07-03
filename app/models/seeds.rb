require 'faker'

500.times do |n|
  sample_email = Faker::Internet.email
  sample_password = Faker::Internet.password(min_length: 6, mix_case: false)
# start_time = Faker::Date.between(from: '2021-01-01', to: '2021-04-30') #期間を限定することもできます。
  Demo.create!(
    email:                      sample_email, 
    encrypted_password:         samplesample_password, 
    created_at:                 "2021-01-01 00:00:00",
    updated_at:                 "2021-01-01 00:00:00"
  )
end