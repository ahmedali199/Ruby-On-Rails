require 'rails_helper'

RSpec.describe "authors/index", :type => :view do
  before(:each) do
    assign(:authors, [
      Author.create!(
        :name => "Name",
        :DOB => "Dob"
      ),
      Author.create!(
        :name => "Name",
        :DOB => "Dob"
      )
    ])
  end

  it "renders a list of authors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Dob".to_s, :count => 2
  end
end
