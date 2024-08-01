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
		<Item Name="Factory" Type="Folder">
			<Item Name="CarFactory.lvclass" Type="LVClass" URL="../CarFactory/CarFactory.lvclass"/>
			<Item Name="HatchbackCarFactory.lvclass" Type="LVClass" URL="../HatchbackCarFactory/HatchbackCarFactory.lvclass"/>
			<Item Name="SedanCarFactory.lvclass" Type="LVClass" URL="../SedanCarFactory/SedanCarFactory.lvclass"/>
			<Item Name="SUVCarFactory.lvclass" Type="LVClass" URL="../SUVCarFactory/SUVCarFactory.lvclass"/>
		</Item>
		<Item Name="Products" Type="Folder">
			<Item Name="Hatchback.lvclass" Type="LVClass" URL="../Hatchback/Hatchback.lvclass"/>
			<Item Name="ICarProduct.lvclass" Type="LVClass" URL="../ICarProduct/ICarProduct.lvclass"/>
			<Item Name="Sedan.lvclass" Type="LVClass" URL="../Sedan/Sedan.lvclass"/>
			<Item Name="SUV.lvclass" Type="LVClass" URL="../SUV/SUV.lvclass"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
