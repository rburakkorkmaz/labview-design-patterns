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
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Element.lvclass" Type="LVClass" URL="../Element_interface/Element.lvclass"/>
			<Item Name="Node.lvclass" Type="LVClass" URL="../Node_class/Node.lvclass"/>
			<Item Name="ItearableCollection.lvclass" Type="LVClass" URL="../ItearableCollection_interface/ItearableCollection.lvclass"/>
			<Item Name="Tree.lvclass" Type="LVClass" URL="../Tree_class/Tree.lvclass"/>
		</Item>
		<Item Name="Iterators" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Iterator.lvclass" Type="LVClass" URL="../Iterator_interface/Iterator.lvclass"/>
			<Item Name="BFSTreeIterator.lvclass" Type="LVClass" URL="../BFSIterator_class/BFSTreeIterator.lvclass"/>
			<Item Name="DFSTreeIterator.lvclass" Type="LVClass" URL="../DFSIterator_class/DFSTreeIterator.lvclass"/>
		</Item>
		<Item Name="Support" Type="Folder">
			<Item Name="Stack_class" Type="Folder">
				<Item Name="Stack.lvclass" Type="LVClass" URL="../Support/Stack_class/Stack.lvclass"/>
			</Item>
			<Item Name="Traversal Type.ctl" Type="VI" URL="../Support/Traversal Type.ctl"/>
		</Item>
		<Item Name="Launcher.vi" Type="VI" URL="../Launcher.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
