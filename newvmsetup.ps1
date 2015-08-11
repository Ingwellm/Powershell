#New VM for SAN setup

#Change ClusterStorage folder and name of VM and size 

#These for CSV 'AD'
new-vhd -path c:\ClusterStorage\AD\DC.vhdx -sizebytes 200GB -fixed
new-vhd -path c:\ClusterStorage\AD\VOICE.vhdx -sizebytes 100GB -fixed
new-vhd -path c:\ClusterStorage\AD\PRINT.vhdx -sizebytes 100GB -fixed

#These for CSV 'Database'
new-vhd -path c:\ClusterStorage\Database\SQL.vhdx -sizebytes 300GB -fixed

#These for CSV 'Management'
new-vhd -path c:\ClusterStorage\Management\DB.vhdx -sizebytes 100GB -fixed
new-vhd -path c:\ClusterStorage\Management\SCCM.vhdx -sizebytes 200GB -fixed

#These for CSV 'Lab'
new-vhd -path c:\ClusterStorage\Lab\MACHINETEST.vhdx -sizebytes 100GB -fixed
new-vhd -path c:\ClusterStorage\Lab\SERVERTEST.vhdx -sizebytes 100GB -fixed


#Create new VM & attach VHDX for CSV 'AD'
new-vm -name AD -path c:\ClusterStorage\AD -memorystartupbytes 6GB -generation 2 -VHDPath c:\ClusterStorage\AD\DC.vhdx
new-vm -name VOICE -path c:\ClusterStorage\AD -memorystartupbytes 4GB -generation 2 -VHDPath c:\ClusterStorage\AD\VOICE.vhdx
new-vm -name PRINT -path c:\ClusterStorage\AD -memorystartupbytes 4GB -generation 2 -VHDPath c:\ClusterStorage\AD\PRINT.vhdx

#Create new VM & attach VHDX for CSV 'Database'
new-vm -name AD -path c:\ClusterStorage\Database -memorystartupbytes 12GB -generation 2 -VHDPath c:\ClusterStorage\Database\SQL.vhdx

#Create new VM & attach VHDX for CSV 'Management'
new-vm -name AD -path c:\ClusterStorage\Management -memorystartupbytes 4GB -generation 2 -VHDPath c:\ClusterStorage\Management\DB.vhdx
new-vm -name AD -path c:\ClusterStorage\Management -memorystartupbytes 8GB -generation 2 -VHDPath c:\ClusterStorage\Management\SCCM.vhdx


#Create new VM & attach VHDX for CSV 'Lab'
new-vm -name AD -path c:\ClusterStorage\Lab -memorystartupbytes 4GB -generation 2 -VHDPath c:\ClusterStorage\Lab\MACHINETEST.vhdx
new-vm -name AD -path c:\ClusterStorage\Lab -memorystartupbytes 4GB -generation 2 -VHDPath c:\ClusterStorage\Lab\SERVERTEST.vhdx





