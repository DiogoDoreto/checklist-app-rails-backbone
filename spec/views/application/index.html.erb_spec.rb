require 'rails_helper'

RSpec.describe "application/index", :type => :view do
  it "renders the base structure for Backbone" do
    render

    expect(rendered).to match /id="checklist-app"/
    expect(rendered).to match /id="header"/
    expect(rendered).to match /id="task-form"/
    expect(rendered).to match /id="task-list"/
  end
end
