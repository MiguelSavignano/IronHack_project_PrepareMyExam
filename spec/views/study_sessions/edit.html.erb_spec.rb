require 'rails_helper'

RSpec.describe "study_sessions/edit", type: :view do
  before(:each) do
    @study_session = assign(:study_session, StudySession.create!(
      :exam_id => 1,
      :theme_id => 1
    ))
  end

  it "renders the edit study_session form" do
    render

    assert_select "form[action=?][method=?]", study_session_path(@study_session), "post" do

      assert_select "input#study_session_exam_id[name=?]", "study_session[exam_id]"

      assert_select "input#study_session_theme_id[name=?]", "study_session[theme_id]"
    end
  end
end
