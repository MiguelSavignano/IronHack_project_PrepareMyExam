require 'rails_helper'

RSpec.describe "notes/edit", type: :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :name => "MyString",
      :attachment => "MyString"
    ))
  end

  it "renders the edit note form" do
    render

    assert_select "form[action=?][method=?]", note_path(@note), "post" do

      assert_select "input#note_name[name=?]", "note[name]"

      assert_select "input#note_attachment[name=?]", "note[attachment]"
    end
  end
end
