Driver.delete_all
Driver.create!([
  { id:7, forename: "Lewis", surname: "Hamilton", display_name: "Lewis Hamilton", born_on: "1970-01-01", country_id: 225, photo_file_name: "lewishamilton.jpg", photo_content_type: "image/jpeg", photo_file_size: 39160, photo_updated_at: "2014-10-24 18:36:30"},
  {forename: "Jenson", surname: "Button", display_name: "Jenson Button", born_on: "1970-01-01", country_id: 225, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil},
  {forename: "Nico", surname: "Rosberg", display_name: "Nico Rosberg", born_on: "1985-05-27", country_id: 80, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil},
  {forename: "Daniel", surname: "Ricciardo", born_on: "1989-07-01", country: Country.find_by_name('Australia')},
  {forename: "Valtteri", surname: "Bottas", born_on: "1989-08-28", country: Country.find_by_name('Finland')},
  {forename: "Sebastien", surname: "Vettel", born_on: "1987-07-03", country: Country.find_by_name('Germany')},
  {forename: "Fernando", surname: "Alonso", born_on: "1981-07-29", country: Country.find_by_name('Spain')},
  {forename: "Felipe", surname: "Massa", born_on: "1981-04-25", country: Country.find_by_name('Brazil')},
  {forename: "Nico", surname: "Hulkenberg", born_on: "1987-08-19", country: Country.find_by_name('Germany')},
  {forename: "Kevin", surname: "Magnussen", born_on: "1992-10-05", country: Country.find_by_name('Denmark')},
  {forename: "Sergio", surname: "Perez", born_on: "1990-01-26", country: Country.find_by_name('Mexico')},
  {forename: "Kimi", surname: "Raikkonen", born_on: "1979-10-17", country: Country.find_by_name('Finland')},
  {forename: "Jean-Eric", surname: "Vergne", born_on: "1990-04-25", country: Country.find_by_name('France')},
  {forename: "Romain", surname: "Grosjean", born_on: "1986-04-17", country: Country.find_by_name('France')},
  {forename: "Daniil", surname: "Kvyat", born_on: "1994-04-26", country: Country.find_by_name('Russia')},
  {forename: "Jules", surname: "Bianchi", born_on: "1989-08-03", country: Country.find_by_name('France')},
  {forename: "Pastor", surname: "Maldonado", born_on: "1985-03-09", country: Country.find_by_name('Venezuela')},
  {forename: "Adrian", surname: "Sutil", born_on: "1983-01-11", country: Country.find_by_name('Germany')},
  {forename: "Marcus", surname: "Ericsson", born_on: "1990-09-02", country: Country.find_by_name('Sweden')},
  {forename: "Esteban", surname: "Gutierrez", born_on: "1991-08-05", country: Country.find_by_name('Mexico')},
  {forename: "Max", surname: "Chilton", born_on: "1991-04-21", country_id: 225},
  {forename: "Kamui", surname: "Kobayashi", born_on: "1986-09-13", country: Country.find_by_name('Japan')}
])