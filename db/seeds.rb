# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
item1 = Item.create(name: "Stepper Motor", category: "Motors", quantity: 5, inInventory: 5, description: "brushless, synchronous electric motor that converts digital pulses to mechanical shaft rotation")
item2 = Item.create(name: "Raspberry Pi", category: "Microprocessors", quantity: 3, inInventory: 3, description: "low cost, credit-card sized computer that plugs into a computer monitor or TV")
item3 = Item.create(name: "Arduino Uno", category: "Microcontrollers", quantity: 4, inInventory: 4, description: "a microcontroller board based on the ATmega328P")
