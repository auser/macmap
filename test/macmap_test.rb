require 'test_helper'

class MacmapTest < Test::Unit::TestCase
  context "darwin" do
    setup do
      @str = open(File.dirname(__FILE__)+"/fixtures/darwin").read
    end

    should "map the mac to ips on darwin" do
      hsh = Macmap.map_iface_to_ip(@str)
      assert_equal hsh["vmnet8"], "192.168.248.1"
      assert_equal hsh["vmnet1"], "172.16.66.1"
      assert_equal hsh["en3"], "10.37.129.2"
      assert_equal hsh["en2"], "10.211.55.2"
      assert_equal hsh["en1"], "10.0.1.7"
      assert_equal hsh["lo0"], "127.0.0.1"
    end
  end
  
  context "ubuntu" do
    setup do
      @str = open(File.dirname(__FILE__)+"/fixtures/ubuntu").read
    end

    should "map the mac to ips on ubuntu" do
      hsh = Macmap.map_iface_to_ip(@str)
      assert_equal hsh["eth0"], "192.168.248.133"
      assert_equal hsh["lo"], "127.0.0.1"
    end
  end
  
  context "solaris" do
    setup do
      @str = open(File.dirname(__FILE__)+"/fixtures/solaris").read
    end

    should "map the mac to ips on solaris" do
      hsh = Macmap.map_iface_to_ip(@str)
      assert_equal hsh["lo0"], "127.0.0.1"
      assert_equal hsh["e1000g0"], "72.2.115.28"
      assert_equal hsh["e1000g2"], "10.2.115.28"
      assert_equal hsh["ip.tun0"], "109.146.85.57"
      assert_equal hsh["eri0"], "172.17.128.208"
      assert_equal hsh["ip6.tun0"], "10.0.0.208"
    end
  end
  
  
end
