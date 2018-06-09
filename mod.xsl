<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.apple-topbar">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-apple-topbar" ox-mod="apple-topbar">
	           
            <div class="left-menu">
        		<button class="J_leftMenu icon-menu"></button><br/>
        		<ul class="list">
        			<xsl:for-each select="data/headmenu/menu/i">
        				<li>
        					<a href="{href}"><xsl:value-of select="title"/></a>
        				</li>
        			</xsl:for-each>
        		</ul>
        	</div>
        	<div class="right-menu">
        		<button class="J_rightMenu icon-menu">&#xe696;</button>
        		<div class="mask"></div>
        		<ul class="list">
        			<xsl:for-each select="data/icon-title-link/i">
        				<li>
        					<a href="{href}"><img src="{icon}"/><xsl:value-of select="title"/></a>
        				</li>
        			</xsl:for-each>
        		</ul>
        	</div>
        	<xsl:if test="data/headmenu/logo">
            	<img src="{data/headmenu/logo}"/>
            </xsl:if>
        </div>
    </xsl:template>
</xsl:stylesheet>
