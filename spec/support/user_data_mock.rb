class RydeAuthMock
  def initialize(uid: -1)
    @uid = uid
  end

  def user_data
    RydeAuth::User.new(
      'sub' => @uid,
      'email' => 'test@example.com',
      'gender' => 'male',
      'birthdate' => '2000-01-01',
      'address_country' => 'JP',
      'address_region' => '東京都',
      'address_locality' => '千代田区',
      'address_formatted' => '東京都千代田区',
      'stripe_customer_id' => 'cus_GtYrWPepeoE1iS'
    )
  end
end
