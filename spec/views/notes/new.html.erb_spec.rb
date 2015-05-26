require 'rails_helper'

RSpec.describe "notes/new", type: :view do
  before(:each) do
    assign(:note, Note.new(
      :name => "MyString",
      :attachment => "MyString"
    ))
  end

  it "renders new note form" do
    render

    assert_select "form[action=?][method=?]", notes_path, "post" do

      assert_select "input#note_name[name=?]", "note[name]"

      assert_select "input#note_attachment[name=?]", "note[attachment]"
    end
  end
end
