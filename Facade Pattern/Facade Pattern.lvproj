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
			<Item Name="Light.lvclass" Type="LVClass" URL="../Light_class/Light.lvclass"/>
			<Item Name="Air Conditioner.lvclass" Type="LVClass" URL="../Air Conditioner_class/Air Conditioner.lvclass"/>
			<Item Name="MusicDevice.lvclass" Type="LVClass" URL="../MusicDevice_class/MusicDevice.lvclass"/>
			<Item Name="Security.lvclass" Type="LVClass" URL="../Security_class/Security.lvclass"/>
		</Item>
		<Item Name="Systems" Type="Folder">
			<Item Name="HeatingSystem.lvclass" Type="LVClass" URL="../HeatingSystem_class/HeatingSystem.lvclass"/>
			<Item Name="LightingSystem.lvclass" Type="LVClass" URL="../LightingSystem_class/LightingSystem.lvclass"/>
			<Item Name="MusicSystem.lvclass" Type="LVClass" URL="../MusicSystem_class/MusicSystem.lvclass"/>
			<Item Name="SecuritySystem.lvclass" Type="LVClass" URL="../SecuritySystem_class/SecuritySystem.lvclass"/>
		</Item>
		<Item Name="House" Type="Folder">
			<Item Name="Room.lvclass" Type="LVClass" URL="../Room_class/Room.lvclass"/>
			<Item Name="House.lvclass" Type="LVClass" URL="../House_class/House.lvclass"/>
		</Item>
		<Item Name="Facade.lvclass" Type="LVClass" URL="../Facade_class/Facade.lvclass"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
