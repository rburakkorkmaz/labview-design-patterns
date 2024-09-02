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
		<Item Name="Data" Type="Folder">
			<Item Name="log.tdms" Type="Document" URL="../Data/log.tdms"/>
			<Item Name="log.tdms_index" Type="Document" URL="../Data/log.tdms_index"/>
		</Item>
		<Item Name="Support" Type="Folder">
			<Item Name="LoggerData.ctl" Type="VI" URL="../Support/LoggerData.ctl"/>
			<Item Name="SignalData.ctl" Type="VI" URL="../Support/SignalData.ctl"/>
			<Item Name="SignalType.ctl" Type="VI" URL="../Support/SignalType.ctl"/>
		</Item>
		<Item Name="Main Code Base" Type="Folder">
			<Item Name="Data Generator.lvclass" Type="LVClass" URL="../Data Generator_class/Data Generator.lvclass"/>
		</Item>
		<Item Name="New Feature" Type="Folder">
			<Item Name="Logger.lvclass" Type="LVClass" URL="../Logger_class/Logger.lvclass"/>
		</Item>
		<Item Name="Adapter" Type="Folder">
			<Item Name="ITarget.lvclass" Type="LVClass" URL="../ITarget_interface/ITarget.lvclass"/>
			<Item Name="LoggerAdapter.lvclass" Type="LVClass" URL="../LoggerAdapter_class/LoggerAdapter.lvclass"/>
		</Item>
		<Item Name="Launcher.vi" Type="VI" URL="../Launcher.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
