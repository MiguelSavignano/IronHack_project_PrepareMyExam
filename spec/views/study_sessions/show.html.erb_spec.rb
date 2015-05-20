require 'rails_helper'

RSpec.describe "study_sessions/show", type: :view do
  before(:each) do
    @study_session = assign(:study_session, StudySession.create!(
      :exam_id => 1,
      :theme_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
