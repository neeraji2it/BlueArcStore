if Rails.env=='development'
  ADMIN_MAIL='oe.member1@gmail.com'
else
  ADMIN_MAIL='admin@touchsecurecrafts.com'
end

SID=102569662
SECRET="NDlmNGRhNzQtMTEyZS00MzZkLThlN2YtZmQyZGFiYTM3ZTRh"
AUTHORIZE_LOGIN_ID = (Rails.env == 'production' ? "5Fq93Cd2m" : "9Z7PR6t7juz")
AUTHORIZE_TRANSACTION_KEY = (Rails.env == 'production' ? "7wk8J6GJ4Est587z" : "72W5yEA58fa5r5FQ")
AUTHORIZE_GATEWAY = (Rails.env == 'production' ? :production : :test)