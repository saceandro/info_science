load("~/info_science/9th/contact.rb")

def first_contact(p)
  if p.left == nil
    p
  else
    first_contact(p.left)
  end
end
