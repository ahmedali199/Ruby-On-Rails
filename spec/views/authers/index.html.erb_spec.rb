require 'rails_helper'

RSpec.describe "authers/index", :type => :view do
  before(:each) do
    assign(:authers, [
      Auther.create!(
        :name => "Name",
        :DOB => "Dob"
      ),
      Auther.create!(
        :name => "Name",
        :DOB => "Dob"
      )
    ])
  end

  it "renders a list of authers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Dob".to_s, :count => 2
  end
end
