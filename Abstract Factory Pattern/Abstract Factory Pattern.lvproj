﻿<?xml version='1.0' encoding='UTF-8'?>
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
		<Item Name="Client" Type="Folder">
			<Item Name="Client.lvclass" Type="LVClass" URL="../Client Folder/Client/Client.lvclass"/>
		</Item>
		<Item Name="Factory" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="EngineFactory.lvclass" Type="LVClass" URL="../Factory Folder/EngineFactory/EngineFactory.lvclass"/>
			<Item Name="Diesel Engine Factory.lvclass" Type="LVClass" URL="../Factory Folder/Diesel Engine Factory/Diesel Engine Factory.lvclass"/>
			<Item Name="Electric Engine Factory.lvclass" Type="LVClass" URL="../Factory Folder/Electric Engine Factory/Electric Engine Factory.lvclass"/>
			<Item Name="Gasoline Engine Factory.lvclass" Type="LVClass" URL="../Factory Folder/Gasoline Engine Factory/Gasoline Engine Factory.lvclass"/>
		</Item>
		<Item Name="Product" Type="Folder">
			<Item Name="ECUs" Type="Folder">
				<Item Name="Diesel ECU.lvclass" Type="LVClass" URL="../Product Folder/Diesel ECU/Diesel ECU.lvclass"/>
				<Item Name="Electric ECU.lvclass" Type="LVClass" URL="../Product Folder/Electric ECU/Electric ECU.lvclass"/>
				<Item Name="Gasoline ECU.lvclass" Type="LVClass" URL="../Product Folder/Gasoline ECU/Gasoline ECU.lvclass"/>
				<Item Name="IECU.lvclass" Type="LVClass" URL="../Product Folder/IECU/IECU.lvclass"/>
			</Item>
			<Item Name="Motors" Type="Folder">
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Item Name="Gasoline Motor.lvclass" Type="LVClass" URL="../Product Folder/Gasoline Motor/Gasoline Motor.lvclass"/>
				<Item Name="Diesel Motor.lvclass" Type="LVClass" URL="../Product Folder/Diesel Motor/Diesel Motor.lvclass"/>
				<Item Name="Electric Motor.lvclass" Type="LVClass" URL="../Product Folder/Electric Motor/Electric Motor.lvclass"/>
				<Item Name="IMotor.lvclass" Type="LVClass" URL="../Product Folder/IMotor/IMotor.lvclass"/>
			</Item>
		</Item>
		<Item Name="Launcher.vi" Type="VI" URL="../Launcher.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
