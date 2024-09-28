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
		<Item Name="Context" Type="Folder">
			<Item Name="TrafficLight.lvclass" Type="LVClass" URL="../TrafficLight_class/TrafficLight.lvclass"/>
		</Item>
		<Item Name="State" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="State.lvclass" Type="LVClass" URL="../State_interface/State.lvclass"/>
			<Item Name="RedState.lvclass" Type="LVClass" URL="../RedState_class/RedState.lvclass"/>
			<Item Name="YellowState.lvclass" Type="LVClass" URL="../YellowState_class/YellowState.lvclass"/>
			<Item Name="GreenState.lvclass" Type="LVClass" URL="../GreenState_class/GreenState.lvclass"/>
		</Item>
		<Item Name="Support" Type="Folder">
			<Item Name="Light.ctl" Type="VI" URL="../Support/Light.ctl"/>
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
