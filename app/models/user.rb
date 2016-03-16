class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: {with: true, message: "valjda su ti roditelji dali ime"}
  validates :surname, presence: {with: true, message: "imas i prezime, sigurnoo"}
  validates :username, presence: {with: true, message:"ne mozes smisliti korisnicko ime?"}, uniqueness:{with: true, message: "nisi kreativan nimalo"}
  validates :email, presence: {with: true, message: "ne budi glup i ispuni to"}, uniqueness: true,format: {with: /\A\S+@\S+\z/, message: "na valja ti format kumee"}

  has_one :cart
end
