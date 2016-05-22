User.destroy_all
user_1 = User.create!(first_name: "Barbara", last_name: "Cierocka", age: 30)
user_2 = User.create!(first_name: "Paula", last_name: "Bojar", age: 21)
user_3 = User.create!(first_name: "Monika", last_name: "Otto", age: 21)

Car.destroy_all
car_1 = Car.create(color: "red", user: user_1)
car_2 = Car.create(color: "black", user: user_1)
car_3 = Car.create(color: "blue", user: user_2)
car_4 = Car.create(color: "pink", user: user_3)
car_5 = Car.create(color: "yellow")

user_1.cars << car_5
car_5.user = user_1
car_5.user.id = user_1.id
car_5.save!
