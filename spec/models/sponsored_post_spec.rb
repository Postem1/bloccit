require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:name) {RandomData.random_sentence}
  let(:description) {RandomData.random_paragraph}
  let(:title) {RandomData.random_sentence}
  let(:body) {RandomData.random_paragraph}
  let(:price) {RandomData.random_integer}


  let (:topic) {Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph)}
  let (:sponsored_post) {topic.sponsored_posts.create!(title: title, body: body, price: price)}

  it {is_expected.to belong_to(:topic)}

  describe "attributes" do
    it "is expected to have attributes" do
      expect(sponsored_post).to have_attributes(title: title, body: body, price: price)
    end
  end
end