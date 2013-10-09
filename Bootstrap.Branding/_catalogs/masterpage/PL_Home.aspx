<%@ Page Language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=14.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"
    meta:webpartpageexpansion="full" meta:progid="SharePoint.WebPartPage.Document" %>

<%@ Register TagPrefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls"
    Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages"
    Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls"
    Assembly="Microsoft.SharePoint.Publishing, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation"
    Assembly="Microsoft.SharePoint.Publishing, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content contentplaceholderid="PlaceHolderAdditionalPageHead" runat="server">
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/page-layouts-21.css %>" runat="server"/>
	<PublishingWebControls:EditModePanel runat="server">
		<!-- Styles for edit mode only-->
		<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/edit-mode-21.css %>"
			After="<% $SPUrl:~sitecollection/Style Library/~language/Core Styles/page-layouts-21.css %>" runat="server"/>
	</PublishingWebControls:EditModePanel>
    <style type="text/css">
        #s4-leftpanel {display:none;}
    </style>
</asp:Content>
<asp:Content contentplaceholderid="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:ListProperty Property="Title" runat="server"/> - <SharePointWebControls:FieldValue FieldName="Title" runat="server"/>
</asp:Content>
<asp:Content contentplaceholderid="PlaceHolderMain" runat="server">
	<div class="row">
        <div class="span12">
            <div class="welcome blank-wp">
		        <PublishingWebControls:EditModePanel runat="server" CssClass="edit-mode-panel">
			        <SharePointWebControls:TextField runat="server" FieldName="Title" />
		        </PublishingWebControls:EditModePanel>
		        <div class="welcome-content">
			        <PublishingWebControls:RichHtmlField FieldName="PublishingPageContent" HasInitialFocus="True" MinimumEditHeight="400px" runat="server"/>
		        </div>
            </div>
        </div>
    </div>
    <div class="hero-unit">
		<WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_Header%>" ID="Header"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
    </div>
    <div class="row">
        <div class="span6">
            <WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_TopLeft%>" ID="TopLeftRow"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
        </div>
        <div class="span6">
            <WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_TopRight%>" ID="TopRightRow"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
        </div>
    </div>
    <div class="row">
        <div class="span4">
			<WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_CenterLeft%>" ID="CenterLeftColumn"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
        </div>
        <div class="span4">
			<WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_Center%>" ID="CenterColumn"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
        </div>
        <div class="span4">
        	<WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_CenterRight%>" ID="CenterRightColumn"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
        </div>
    </div>
    <div class="row">
        <div class="span12">
            <WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_Footer%>" ID="Footer"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
        </div>
    </div>

    <div style="display:none;">
        <WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_Right%>" ID="RightColumn" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>'
    </div>
	
</asp:Content>
