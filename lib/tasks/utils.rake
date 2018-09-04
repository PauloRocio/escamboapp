namespace :utils do
  desc "Cria administradores fake"
  task generate_admins: :environment do
    puts 'Criando administradores fake'
    10.times.each do 
      Admin.create!(
                   name: Faker::Name.name,
                   email: Faker::Internet.email,
                   password: '123456',
                   password_confirmation: '123456')
    end
    puts "Administradores cadastrados com sucesso!"
  end

end
