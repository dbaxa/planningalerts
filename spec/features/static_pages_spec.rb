# frozen_string_literal: true

require "spec_helper"

feature "Browsing basic static content pages" do
  it "should have an about page" do
    visit about_path
    expect(page).to have_content "The aim of this to enable shared scrutiny of what is being built"
  end
end
