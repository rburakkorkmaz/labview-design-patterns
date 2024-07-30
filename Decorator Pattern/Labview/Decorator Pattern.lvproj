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
		<Item Name="Abstractions" Type="Folder">
			<Item Name="IText.lvclass" Type="LVClass" URL="../IText/IText.lvclass"/>
			<Item Name="TextDecorator.lvclass" Type="LVClass" URL="../TextDecorator/TextDecorator.lvclass"/>
		</Item>
		<Item Name="Concrete Classes" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Decorators" Type="Folder">
				<Item Name="BoldDecorator.lvclass" Type="LVClass" URL="../BoldDecorator/BoldDecorator.lvclass"/>
				<Item Name="ItalicDecorator.lvclass" Type="LVClass" URL="../ItalicDecorator/ItalicDecorator.lvclass"/>
				<Item Name="UnderlineDecorator.lvclass" Type="LVClass" URL="../UnderlineDecorator/UnderlineDecorator.lvclass"/>
			</Item>
			<Item Name="Text.lvclass" Type="LVClass" URL="../Text/Text.lvclass"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
