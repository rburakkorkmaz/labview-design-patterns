<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="24008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Devices" Type="Folder">
			<Item Name="Light.lvclass" Type="LVClass" URL="../Devices/Light_class/Light.lvclass"/>
			<Item Name="Air Conditioner.lvclass" Type="LVClass" URL="../Devices/Air Conditioner_class/Air Conditioner.lvclass"/>
			<Item Name="MusicDevice.lvclass" Type="LVClass" URL="../Devices/MusicDevice_class/MusicDevice.lvclass"/>
			<Item Name="Security.lvclass" Type="LVClass" URL="../Devices/Security_class/Security.lvclass"/>
		</Item>
		<Item Name="Systems" Type="Folder">
			<Item Name="Type Defs" Type="Folder">
				<Item Name="Rooms Map.ctl" Type="VI" URL="../Systems/Type Defs/Rooms Map.ctl"/>
				<Item Name="Rooms Cluster Array.ctl" Type="VI" URL="../Systems/Type Defs/Rooms Cluster Array.ctl"/>
				<Item Name="Room Scene.ctl" Type="VI" URL="../Systems/Type Defs/Room Scene.ctl"/>
			</Item>
			<Item Name="System.lvclass" Type="LVClass" URL="../Systems/System_interface/System.lvclass"/>
			<Item Name="LightingSystem.lvclass" Type="LVClass" URL="../Systems/LightingSystem_class/LightingSystem.lvclass"/>
			<Item Name="HeatingSystem.lvclass" Type="LVClass" URL="../Systems/HeatingSystem_class/HeatingSystem.lvclass"/>
			<Item Name="MusicSystem.lvclass" Type="LVClass" URL="../Systems/MusicSystem_class/MusicSystem.lvclass"/>
			<Item Name="SecuritySystem.lvclass" Type="LVClass" URL="../Systems/SecuritySystem_class/SecuritySystem.lvclass"/>
		</Item>
		<Item Name="House" Type="Folder">
			<Item Name="Room.lvclass" Type="LVClass" URL="../House/Room_class/Room.lvclass"/>
			<Item Name="House.lvclass" Type="LVClass" URL="../House/House_class/House.lvclass"/>
		</Item>
		<Item Name="Client Side" Type="Folder">
			<Item Name="Type Defs" Type="Folder">
				<Item Name="Home Mode.ctl" Type="VI" URL="../Client Side/Type Defs/Home Mode.ctl"/>
			</Item>
			<Item Name="Facade.lvclass" Type="LVClass" URL="../Client Side/Facade_class/Facade.lvclass"/>
			<Item Name="Client.lvclass" Type="LVClass" URL="../Client Side/Client_class/Client.lvclass"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
