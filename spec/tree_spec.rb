require File.join(File.dirname(__FILE__),'../lib/tree.rb')
describe Orichi::Tree do
  it "create a root node" do
    root = Orichi::Tree.new('root')
    root.parent.should eql(nil)
    root.deep_index.should eql(0)
  end
  
  it "create a child node" do
    root = Orichi::Tree.new('root')
    child = Orichi::Tree.new('child')
    root << [child]
    child.parent.node.should eql('root')
    child.deep_index.should eql(1)
  end

  it "create a grandson node" do
    root = Orichi::Tree.new('root')
    child = Orichi::Tree.new('child')
    grandson = Orichi::Tree.new('grandson')
    root << [child << [grandson]]
    grandson.parent.parent.node.should eql('root')
    grandson.parent.node.should eql('child')
    grandson.parent.parent.deep_index.should eql(0)
    grandson.parent.deep_index.should eql(1)
    grandson.deep_index.should eql(2)
  end
end