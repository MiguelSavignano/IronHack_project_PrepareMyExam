require 'rails_helper'

RSpec.describe "study_sessions/index", type: :view do
  before(:each) do
    assign(:study_sessions, [
      StudySession.create!(
        :exam_id => 1,
        :theme_id => 2
      ),
      StudySession.create!(
        :exam_id => 1,
        :theme_id => 2
      )
    ])
  end

  it "renders a list of study_sessions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
