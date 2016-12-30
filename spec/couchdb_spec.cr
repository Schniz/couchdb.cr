require "./spec_helper"

require "../src/couchdb/client"

describe CouchDB do

  describe CouchDB::Client do
    it "should get server info" do
      client = new_client
      info = client.server_info
      info.couchdb.should eq "Welcome"
      info.version.should eq "2.0.0"
      info.vendor["name"].should eq "The Apache Software Foundation"
    end

    it "should return databases list" do
      client = new_client
      dbs = client.databases
      dbs.should eq [] of String
    end



  end

end