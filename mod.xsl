<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.apple-topbar">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-apple-topbar" ox-mod="apple-topbar">
	       <xsl:variable select="data/ui-entry/i" name="list-icon"/>
           <xsl:variable select="data/the-site/channels/i" name="list-noicon"/>
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
            					<a href="{href}">
                                    <img class="icon" src="https://a.oxm1.cc/img/blank.png" style="background-image:url({icon})"/>
                                    <xsl:value-of select="title"/>
                                </a>
            				</li>
            			</xsl:for-each>
            		</ul>
            	</div>
            </xsl:if>
        	<xsl:if test="data/the-site/logo and data/the-site/logo !='' ">
            	<img class="logo" src="https://a.oxm1.cc/img/blank.png" style="background-image:url({data/the-site/logo})"/>
            </xsl:if>
        </div>
    </xsl:template>
</xsl:stylesheet>
