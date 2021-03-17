require 'rails_helper'

RSpec.describe EventPolicy, type: :policy do
  let(:user) { User.new }
  let(:event) { Event.new(user: user) }
  let(:other_user) { User.new }

  subject { described_class }

  before do
    user.events << event
  end

  permissions :edit? do
    it { is_expected.to permit(user, event) }
    it { is_expected.not_to permit(nil, event) }
    it { is_expected.not_to permit(other_user, event) }
  end

  permissions :update? do
    it { is_expected.to permit(user, event) }
    it { is_expected.not_to permit(nil, event) }
    it { is_expected.not_to permit(other_user, event) }
  end
  
  permissions :destroy? do
    it { is_expected.to permit(user, event) }
    it { is_expected.not_to permit(nil, event) }
    it { is_expected.not_to permit(other_user, event) }
  end

  permissions :show? do
    it { is_expected.to permit(user, event) }
    it { is_expected.to permit(nil, event) }
    it { is_expected.to permit(other_user, event) }
  end
end
