module UsersHelper
  def userErrors(user)
    errors=user.errors.messages
    flash[:error]=[]
    flash[:error]<<"[Korisnicko ime] #{errors[:username].first}" if errors[:username].present?
    flash[:error]<<"[Email] #{errors[:email].first}" if errors[:email].present?
    flash[:error]<<"[Ime] #{errors[:name].first}" if errors[:name].present?
    flash[:error]<<"[Prezime] #{errors[:surname].first}" if errors[:surname].present?
    flash[:error]<<'[Sifra] Polje "Sifra" ne moze biti prazno!' if errors[:password].present?
    flash[:error]<<'[Potrvrda sifre] Polja "Sifra" i "Potrvrda sifre" nisu ista!' if errors[:password_confirmation].present?
  end
end
