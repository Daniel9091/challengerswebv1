# db/seeds.rb

# Limpia la base de datos antes de poblarla
OrganizationTag.destroy_all
Tag.destroy_all
Organization.destroy_all

# Crea algunas organizaciones con el campo name
org1 = Organization.create(
  name: "Organization 1", # Añadir el campo name
  description: "This is Organization 1",
  website: "http://organization1.com"
)

org2 = Organization.create(
  name: "Organization 2", # Añadir el campo name
  description: "This is Organization 2",
  website: "http://organization2.com"
)

org3 = Organization.create(
  name: "Organization 3", # Añadir el campo name
  description: "This is Organization 3",
  website: "http://organization3.com"
)

# Crea algunas etiquetas
tag1 = Tag.create(name: "Technology")
tag2 = Tag.create(name: "Health")
tag3 = Tag.create(name: "Education")

# Asocia etiquetas con organizaciones
OrganizationTag.create(organization_id: org1.id, tag_id: tag1.id)
OrganizationTag.create(organization_id: org1.id, tag_id: tag2.id)
OrganizationTag.create(organization_id: org2.id, tag_id: tag3.id)
OrganizationTag.create(organization_id: org3.id, tag_id: tag1.id)
OrganizationTag.create(organization_id: org3.id, tag_id: tag3.id)

puts "Seed data created successfully!"
