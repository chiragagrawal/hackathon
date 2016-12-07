require 'json'
class UpdateJsonFile

  filename = "sample.json"
  read_json = File.read(filename)
  hash_data = JSON.parse(read_json)

  if hash_data["featureConfigs"]["features"][2]["firewallRules"]["firewallRules"][0]["application"]["service"][0]["protocol"] == "tcp"
    hash_data["featureConfigs"]["features"][2]["firewallRules"]["firewallRules"][0]["application"]["service"][0]["protocol"] = "udp"
  elsif hash_data["vnics"]["vnics"][0]["portgroupName"] == "Tenant_Transit_Logical_Local"
    hash_data["vnics"]["vnics"][0]["portgroupName"] == "EXT_VLAN_201b"
  else hash_data["featureConfigs"]["features"][5]["ospf"]["enabled"] == "false"
      hash_data["featureConfigs"]["features"][5]["ospf"]["enabled"] == "true"
  end
    holdDownTimerArray = hash_data["featureConfigs"]["features"][5]["bgp"]["bgpNeighbours"]["bgpNeighbours"] 

    holdDownTimerArray.map{|x| x["holdDownTimer"] = x["holdDownTimer"]+x["keepAliveTimer"]}

  write_json = hash_data.to_json
  File.open('sample.json', 'w') { |file| file.write(write_json) }
end
