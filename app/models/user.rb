class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: {with: true, message: 'Polje "Ime" ne smije biti prazno!'}
  validates :surname, presence: {with: true, message: 'Polje "Prezime" ne smije biti prazno!'}
  validates :username, presence: {with: true, message:'Polje "Korisnicko ime" ne smije biti prazno!'}, uniqueness:{with: true, message: "Odabrano korisnicko ime vec postoji!"}
  validates :email, presence: {with: true, message: 'Polje "Email" ne smije biti prazno!'}, uniqueness: true,format: {with: /\A\S+@\S+\z/, message: "Niste unijeli validan mail!"}

  has_one :cart
end
