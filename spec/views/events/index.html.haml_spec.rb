require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :title => "Title",
        :category_id => 1,
        :teaser => "Teaser",
        :description => "MyText",
        :cover_img => "Cover Img",
        :street_no => "Street No",
        :street_name => "Street Name",
        :floor => "Floor",
        :town => "Town",
        :region => "Region",
        :postcode => "Postcode",
        :country => "Country"
      ),
      Event.create!(
        :title => "Title",
        :category_id => 1,
        :teaser => "Teaser",
        :description => "MyText",
        :cover_img => "Cover Img",
        :street_no => "Street No",
        :street_name => "Street Name",
        :floor => "Floor",
        :town => "Town",
        :region => "Region",
        :postcode => "Postcode",
        :country => "Country"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Teaser".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Cover Img".to_s, :count => 2
    assert_select "tr>td", :text => "Street No".to_s, :count => 2
    assert_select "tr>td", :text => "Street Name".to_s, :count => 2
    assert_select "tr>td", :text => "Floor".to_s, :count => 2
    assert_select "tr>td", :text => "Town".to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
  end
end
