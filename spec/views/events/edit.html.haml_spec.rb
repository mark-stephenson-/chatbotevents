require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :title => "MyString",
      :category_id => 1,
      :teaser => "MyString",
      :description => "MyText",
      :cover_img => "MyString",
      :street_no => "MyString",
      :street_name => "MyString",
      :floor => "MyString",
      :town => "MyString",
      :region => "MyString",
      :postcode => "MyString",
      :country => "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_title[name=?]", "event[title]"

      assert_select "input#event_category_id[name=?]", "event[category_id]"

      assert_select "input#event_teaser[name=?]", "event[teaser]"

      assert_select "textarea#event_description[name=?]", "event[description]"

      assert_select "input#event_cover_img[name=?]", "event[cover_img]"

      assert_select "input#event_street_no[name=?]", "event[street_no]"

      assert_select "input#event_street_name[name=?]", "event[street_name]"

      assert_select "input#event_floor[name=?]", "event[floor]"

      assert_select "input#event_town[name=?]", "event[town]"

      assert_select "input#event_region[name=?]", "event[region]"

      assert_select "input#event_postcode[name=?]", "event[postcode]"

      assert_select "input#event_country[name=?]", "event[country]"
    end
  end
end
