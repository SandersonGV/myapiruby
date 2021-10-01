namespace :dev do
  desc "configura o ambiente de desenvolvimento"
  task setup: :environment do
    10.times do |i|
        Post.create!(
            title:Faker::ChuckNorris.fact,
            body:Faker::Lorem.paragraph 
        )
    end
  end

end
