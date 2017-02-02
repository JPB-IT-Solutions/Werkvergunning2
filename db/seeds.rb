# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Role.create({name: "Gast", description: "Can read items"})
r2 = Role.create({name: "Aanvrager", description: "Can read and create items. Can update and destroy own items"})
r3 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})

u1 = User.create({name: "Testgast", email: "sally@example.com", password: "netwerkkabel", password_confirmation: "netwerkkabel", role_id: r1.id})
u2 = User.create({name: "Testuser", email: "sue@example.com", password: "netwerkkabel", password_confirmation: "netwerkkabel", role_id: r2.id})
u3 = User.create({name: "Marco", email: "marco.groenhof@jpbgroep.nl", password: "JPWV42", password_confirmation: "JPWV42", role_id: r2.id})
u4 = User.create({name: "supervisor", email: "marco.groenhof@jpbgroep.nl", password: "JPWV42", password_confirmation: "JPWV42", role_id: r3.id})

m1 = Measurement.create({measurementtype: "product verklaring", measurement: "Systeem inblokken" })
m2 = Measurement.create({measurementtype: "product verklaring", measurement: "Systeem drukvrij maken" })
m3 = Measurement.create({measurementtype: "product verklaring", measurement: "Systeem productvrij maken" })
m4 = Measurement.create({measurementtype: "product verklaring", measurement: "Systeem afsteken" })
m5 = Measurement.create({measurementtype: "product verklaring", measurement: "Systeem afkoppelen" })
m6 = Measurement.create({measurementtype: "product verklaring", measurement: "Systeem spoelen" })
m7 = Measurement.create({measurementtype: "product verklaring", measurement: "Systeem stomen " })
m8 = Measurement.create({measurementtype: "product verklaring", measurement: "Flenzen labelen" })
m9 = Measurement.create({measurementtype: "product verklaring", measurement: "Eerste opening installatie onder toezicht Productie" })
m10 = Measurement.create({measurementtype: "product verklaring", measurement: "Automatische blusinstallatie(s) veiligstellen" })
m11 = Measurement.create({measurementtype: "product verklaring", measurement: "Geforceerde ventilatie" })
m12 = Measurement.create({measurementtype: "product verklaring", measurement: "Apparatuur mechanisch blokkeren" })
m13 = Measurement.create({measurementtype: "product verklaring", measurement: "E-tracing veilig gesteld" })
m14 = Measurement.create({measurementtype: "product verklaring", measurement: "Stroomtracing veilig gesteld" })

m15 = Measurement.create({measurementtype: "Elektrotechnisch", measurement: "Hangslotvergrendeling door vergunninghouder" })
m16 = Measurement.create({measurementtype: "Elektrotechnisch", measurement: "Zekeringen getrokken" })
m17 = Measurement.create({measurementtype: "Elektrotechnisch", measurement: "Installatie losgekoppeld" })
m18 = Measurement.create({measurementtype: "Elektrotechnisch", measurement: "Geaard en ontladen" })

m19 = Measurement.create({measurementtype: " ", measurement: " " })
m20 = Measurement.create({measurementtype: " ", measurement: " " })
m21 = Measurement.create({measurementtype: " ", measurement: " " })
m22 = Measurement.create({measurementtype: " ", measurement: " " })
m23 = Measurement.create({measurementtype: " ", measurement: " " })
m24 = Measurement.create({measurementtype: " ", measurement: " " })
m25 = Measurement.create({measurementtype: " ", measurement: " " })
m26 = Measurement.create({measurementtype: " ", measurement: " " })
m27 = Measurement.create({measurementtype: " ", measurement: " " })
m28 = Measurement.create({measurementtype: " ", measurement: " " })
m29 = Measurement.create({measurementtype: " ", measurement: " " })
m30 = Measurement.create({measurementtype: " ", measurement: " " })



