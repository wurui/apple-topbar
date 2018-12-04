<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.apple-topbar">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-apple-topbar" ox-mod="apple-topbar">
	       <xsl:variable select="data/ui-entry/i[icon]" name="list-icon"/>
           <xsl:variable select="data/ui-entry/i[not(icon)]" name="list-noicon"/>
           <xsl:if test="count($list-noicon) &gt; 0">
                <div class="left-menu">
            		<button class="J_leftMenu icon-menu"></button><br/>
            		<ul class="list">
            			<xsl:for-each select="$list-noicon">
            				<li>
            					<a href="{href}"><xsl:value-of select="title"/></a>
            				</li>
            			</xsl:for-each>
            		</ul>
            	</div>
            </xsl:if>
            <xsl:if test="count($list-icon) &gt; 0">
            	<div class="right-menu">
            		<button class="J_rightMenu icon-menu">&#xe696;</button>
            		<div class="mask"></div>
            		<ul class="list">
            			<xsl:for-each select="$list-icon">
            				<li>
            					<a href="{href}"><img src="{icon}"/><xsl:value-of select="title"/></a>
            				</li>
            			</xsl:for-each>
            		</ul>
            	</div>
            </xsl:if>
        	<xsl:if test="data/ui-imglist/i[1]">
            	<img src="{data/ui-imglist/i[1]/img}"/>
            </xsl:if>
        </div>
    </xsl:template>
</xsl:stylesheet>
