<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="24008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Collection" Type="Folder">
			<Item Name="ItearableCollection.lvclass" Type="LVClass" URL="../ItearableCollection_interface/ItearableCollection.lvclass"/>
			<Item Name="Node.lvclass" Type="LVClass" URL="../Node_class/Node.lvclass"/>
			<Item Name="Tree.lvclass" Type="LVClass" URL="../Tree_class/Tree.lvclass"/>
		</Item>
		<Item Name="Iterators" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Iterator.lvclass" Type="LVClass" URL="../Iterator_interface/Iterator.lvclass"/>
			<Item Name="BFSIterator.lvclass" Type="LVClass" URL="../BFSIterator_class/BFSIterator.lvclass"/>
			<Item Name="DFSIterator.lvclass" Type="LVClass" URL="../DFSIterator_class/DFSIterator.lvclass"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
