class Customer < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true
  validates :company_name, presence: true
  validates_format_of :email, :with => /@/

  def self.insert_customers()
    create(first_name: 'asd', last_name:'test', email:'asd@asd.com',
                        phone:'1234567891', company_name:'something')
  end

end