require "spec_helper"

describe String do
  it "raises" do
    expect { mock_model(String) }.to raise_exception
  end
end
