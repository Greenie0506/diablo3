load "lib/account.rb"
describe "account" do
  let(:sample_json) do
    %q@{ "account": "Straton#1",
        "heroes": [182, 183, 184, 185, 186],
        "artisan": [{
            "slug": "Blacksmith",
            "level": 3,
            "step": { "current": 4, "max": 5 }
        },{
            "slug": "Jeweler",
            "level": 1,
            "step": { "current": 0, "max": 1 }
        }],
        "progression": [{
            "act": 1,
            "difficulty": 0
        },{
            "act": 2,
            "difficulty": -1
        },{
            "act": 3,
            "difficulty": -1
        },{
            "act": 4,
            "difficulty": -1
        }],
        "kills": {
            "monsters": 4280,
            "elites": 241,
             "hardcore_monsters": 0
        },
        "time-played": {
            "barbarian": 1.0,
            "demon-hunter": 0.6,
            "monk": 0.3,
            "witch-doctor": 0.1,
            "wizard": 0.0
        },
        "last_modified ": 1666805944000,
      }
    @
  end

  describe "init" do
    it "should get a account" do
      account = Account.new(sample_json)
      account.name.should == "Straton#1"
    end
  end
end
