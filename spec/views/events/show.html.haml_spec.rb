require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Teaser/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Cover Img/)
    expect(rendered).to match(/Street No/)
    expect(rendered).to match(/Street Name/)
    expect(rendered).to match(/Floor/)
    expect(rendered).to match(/Town/)
    expect(rendered).to match(/Region/)
    expect(rendered).to match(/Postcode/)
    expect(rendered).to match(/Country/)
  end
end
