User.create!(name:   "Kei Tajima",
  email:             "mk91wasd@gmail.com",
  password:          "k3726s")

  3.times do |n|
    user = User.create!(
      name: "テストユーザー#{n}",
      email: "mk#{n}1wasd@gmail.com",
      password: "k3726s",
    )
  
    12.times do |m|
      user.recipes.build(
        title: "フード名_#{m}",
        desc: "フード_#{m}の説明文です。"
      )
    end

    user.save!
end
