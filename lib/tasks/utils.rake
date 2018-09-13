namespace :utils do
  desc "Cria administradores fake"
  task generate_admins: :environment do
    puts 'Criando administradores fake'
    10.times.each do 
      Admin.create!(
                   name: Faker::Name.name,
                   email: Faker::Internet.email,
                   password: '123456',
                   password_confirmation: '123456',
                   role: [0,1,1,1].sample)
    end
    puts "Administradores cadastrados com sucesso!"
  end

  desc "Cria members fake"
  task generate_members: :environment do
    puts 'Cadastrando membros'
    100.times do
      Member.create!(
        email: Faker::Internet.email,
        password: '123456',
        password_confirmation: '123456'
      )
    end
    puts 'Membros cadastrados com sucesso!'
  end

  desc "Cria anuncios fake"
  task generate_ads: :environment do
    puts 'Cadastrando anuncios'
    100.times do
      Ad.create!(
        title: Faker::Lorem.sentence([2, 3, 4, 5].sample),
        description: Faker::Lorem.sentence([2, 3, 4, 5].sample),
        member: Member.all.sample,
        category: Category.all.sample
      )
    end
    puts 'Anuncios cadastrados com sucesso!'
  end

end
