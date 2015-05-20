require 'rails_helper'

RSpec.describe "study_sessions/new", type: :view do
  before(:each) do
    assign(:study_session, StudySession.new(
      :exam_id => 1,
      :theme_id => 1
    ))
  end

  it "renders new study_session form" do
    render

    assert_select "form[action=?][method=?]", study_sessions_path, "post" do

      assert_select "input#study_session_exam_id[name=?]", "study_session[exam_id]"

      assert_select "input#study_session_theme_id[name=?]", "study_session[theme_id]"
    end
  end
end
