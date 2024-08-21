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
		<Item Name="Invoker" Type="Folder">
			<Item Name="RemoteControl.lvclass" Type="LVClass" URL="../RemoteControl_class/RemoteControl.lvclass"/>
		</Item>
		<Item Name="Commands" Type="Folder">
			<Item Name="IPlayerCommand.lvclass" Type="LVClass" URL="../IPlayerCommand_interface/IPlayerCommand.lvclass"/>
			<Item Name="PlayMusicCommand.lvclass" Type="LVClass" URL="../PlayMusicCommand_class/PlayMusicCommand.lvclass"/>
			<Item Name="PauseMusicCommand.lvclass" Type="LVClass" URL="../PauseMusicCommand_class/PauseMusicCommand.lvclass"/>
			<Item Name="StopMusicCommand.lvclass" Type="LVClass" URL="../StopMusicCommand_class/StopMusicCommand.lvclass"/>
			<Item Name="SkipMusicCommand.lvclass" Type="LVClass" URL="../SkipMusicCommand_class/SkipMusicCommand.lvclass"/>
		</Item>
		<Item Name="Receiver" Type="Folder">
			<Item Name="MediaPlayer.lvclass" Type="LVClass" URL="../MediaPlayer_class/MediaPlayer.lvclass"/>
		</Item>
		<Item Name="Client.lvclass" Type="LVClass" URL="../Client_class/Client.lvclass"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
