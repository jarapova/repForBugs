require 'spec_helper'
require 'securerandom'

feature 'TrueAutomation.IO capybara example' do
  scenario 'EC flow - go to pipeline' do
    visit 'https://ectest.trueautomation.io/flow'

    find(:xpath, "//input[@id='username']").set('admin')
    find(:xpath, "//input[@id='password']").set('changeme')
    find(:xpath, "//button[text()='Login']").click
    sleep 3

    # find(:xpath, ta('EC:content:humburg', "//div[@class='at-main-menu-btn ch-icon-container menu']")).click
    find(:xpath, "//div[@class='at-main-menu-btn ch-icon-container menu']").click

    # find(:xpath, ta('EC:content:pipelines', "//a[@class='black-link nav-menu-category__item at-main-menu-pipelines']")).click
    find(:xpath, "//a[@class='black-link nav-menu-category__item at-main-menu-pipelines']").click

    # find(:xpath, ta('EC:content:choosePipeline', "//div/a[@title='pipJul_NOT_DELETE']")).click
    find(:xpath, "//div/a[@title='pipJul_NOT_DELETE']").click

  end
end
