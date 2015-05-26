require 'rails_helper'

RSpec.describe "notes/index", type: :view do
  before(:each) do
    assign(:notes, [
      Note.create!(
        :name => "Name",
        :attachment => "Attachment"
      ),
      Note.create!(
        :name => "Name",
        :attachment => "Attachment"
      )
    ])
  end

  it "renders a list of notes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Attachment".to_s, :count => 2
  end
end
