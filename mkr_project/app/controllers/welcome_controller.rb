class WelcomeController < ApplicationController
  def index
    ctry = ['india', 'canada', 'australia', 'brazil', 'china', 'colombia', 'denmark', 'france', 'germany', 'hong kong', 'indonesia', 'italy', 'japan', 'malaysia', 'mexico', 'nepal', 'namibia', 'new zealand', 'oman', 'russian federation', 'singapore', 'south africa', 'spain', 'sri lanka', 'switzerland', 'thailand', 'turkey', 'ukraine', 'united states', 'zimbabwe','congo','sweden']
    if ctry.include?(params[:search]&.downcase)
      @country_name = params[:search]
      country = set_country_zone(params[:search])
      @current_time = Time.now.in_time_zone(country)
    else
      @country_name = 'india'
      @current_time = Time.now.in_time_zone('Asia/Kolkata')
    end
  end
  
  def about
  end

  private

  def set_country_zone(country)
    case country&.downcase

    when 'india'
      'Asia/Kolkata'
    when 'canada'
      'America/Atikokan'
    when 'australia'
      'Antarctica/Macquarie'
    when 'brazil'
      'America/Araguaina'
    when 'china'
      'Asia/Shanghai'
    when 'colombia'
      'America/Bogota'
    when 'denmark'
      'Europe/Copenhagen'
    when 'france'
      'Europe/Paris'
    when 'germany'
      'Europe/Berlin'
    when 'hong kong'
      'Asia/Hong_Kong'
    when 'indonesia'
      'Asia/Jakarta'
    when 'italy'
      'Europe/Rome'
    when 'japan'
      'Asia/Tokyo'
    when 'malaysia'
      'Asia/Kuala_Lumpur'
    when 'mexico'
      'America/Bahia_Banderas'
    when 'nepal'
      'Asia/Kathmandu'
    when 'namibia'
      'Africa/Windhoek'
    when 'new zealand'
      'Pacific/Auckland'
    when 'oman'
      'Asia/Muscat'
    when 'russian federation'
      'Asia/Anadyr'
    when 'singapore'
      'Asia/Singapore'
    when 'south africa'
      'Africa/Johannesburg'
    when 'spain'
      'Africa/Ceuta'
    when 'sri lanka'
      'Asia/Colombo'
    when 'switzerland'
      'Europe/Zurich'
    when 'thailand'
      'Asia/Bangkok'
    when 'turkey'
      'Europe/Istanbul'
    when 'ukraine'
      'Europe/Kiev'
    when 'united states'
      'America/Adak'
    when 'zimbabwe'
      'Africa/Harare'
    when 'congo'
      'Africa/Brazzaville'
    when 'sweden'
      'Europe/Stockholm'
    else
      'Asia/Kolkata'
    end
  end
end
