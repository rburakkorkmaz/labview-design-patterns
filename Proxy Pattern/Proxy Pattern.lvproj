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
		<Item Name="Support" Type="Folder">
			<Item Name="UIType.ctl" Type="VI" URL="../UIType.ctl"/>
			<Item Name="UserLevel.ctl" Type="VI" URL="../UserLevel.ctl"/>
		</Item>
		<Item Name="Pages" Type="Folder">
			<Item Name="Main Page.vi" Type="VI" URL="../Pages/Main Page.vi"/>
			<Item Name="Settings Page.vi" Type="VI" URL="../Pages/Settings Page.vi"/>
			<Item Name="Debugging Page.vi" Type="VI" URL="../Pages/Debugging Page.vi"/>
		</Item>
		<Item Name="IManager.lvclass" Type="LVClass" URL="../IManager_interface/IManager.lvclass"/>
		<Item Name="UI Manager.lvclass" Type="LVClass" URL="../UI Manager_class/UI Manager.lvclass"/>
		<Item Name="UI Manager Proxy.lvclass" Type="LVClass" URL="../UI Manager Proxy_class/UI Manager Proxy.lvclass"/>
		<Item Name="Launcher.vi" Type="VI" URL="../Launcher.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="GOOPUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/GOOPUtility/GOOPUtility.lvlib"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
