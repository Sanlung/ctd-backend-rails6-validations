require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { Order.new(
    product_name: 'iMac 27"',
    product_count: '1',
    customer: Customer.new(
      first_name: 'Jack',
      last_name: 'Smith',
      phone: '8889995678',
      email: 'jsmith@sample.com'
      ))
    }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a product_name' do
    subject.product_name = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a product_count' do
    subject.product_count = nil
    expect(subject).to_not be_valid
  end
  it 'product_count must be greater than 0' do
    expect(subject.product_count).to be > 0
  end
  it 'is not valid if no customer is associated' do
    subject.customer = nil
    expect(subject).to_not be_valid
  end
end
