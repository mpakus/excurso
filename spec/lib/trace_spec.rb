require 'rails_helper'

RSpec.describe Trace do
  before :each do
    @container = {}
    @trace = Trace.new(@container, 3)
  end

  it "should add new value to container" do
    @trace.add(1024)
    expect(@container[:last]).to include(1024)
  end

  it "check before add same value into container" do
    @trace.add(1024)
    @trace.add(1024)
    expect(@container[:last].size).to eq(1)
  end

  it "check limits over in container" do
    @trace.add(256)
    @trace.add(512)
    @trace.add(1024)
    @trace.add(2048)
    @trace.add(4096)
    @trace.add(8912)
    @trace.add(16536)
    expect(@container[:last].size).to eq(3 + 1)
  end

  it "check fifo order in container" do
    @trace.add(256)
    @trace.add(512)
    @trace.add(1024)
    @trace.add(2048)
    expect(@container[:last]).to eq([2048, 1024, 512, 256])

    @trace.add(4096)
    expect(@container[:last]).to eq([4096, 2048, 1024, 512])
  end

end