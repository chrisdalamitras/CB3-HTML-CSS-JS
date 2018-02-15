<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:template match="/">
  <html style="background-image:url('Medical-Symbol.jpg'); background-repeat:no-repeat;background-position:right top; ">
   <div style="width: 600px; margin-left: 350; font-family:Trebuchet MS;">
     <div style="color:white; background-color:teal; font-size: 30px width:110%; height:40px;">
     <xsl:text>&#xa0;</xsl:text>Clinical Document Sample
     </div>
     <br/>
     <xsl:for-each select="clinicalDocument/patient">
      <div style=" border:solid 2px #AFEEEE;">
       <div style="color:black; background-color:#F5FFFA;">
        <table style="width: 100%;border 0px solid;">
         <tr>
          <td>Ονοματεπώνυμο Ασθενή : <xsl:value-of select="surname"/><xsl:text>&#xa0;</xsl:text><xsl:value-of select="name"/></td>
		 </tr>
		 <tr>
          <td>ID Ασθενή : <xsl:value-of select="@id"/></td>
		 </tr>
		 <tr>
		  <td>Φύλο : <xsl:value-of select="gender"/></td>
		 </tr>
		 <tr>
		  <td>Όνομα Πατρός : <xsl:value-of select="fathersname"/></td>
		 </tr>
		 <tr>
		  <td>Ημερομηνία Γέννησης : <xsl:value-of select="dateofbirth"/></td>
         </tr>
         <xsl:for-each select="current()/examination">
          <div style=" border:solid 2px #E6E6FA;">
           <div style="color:black; background-color:#F5F5DC;">
            <table style="width: 100%;border 0px solid;">
			 <tr>
              <td>ID εξέτασης : <xsl:value-of select="@examid"/></td>
			 </tr>
			 <tr>
              <td>Τύπος εξέτασης : <xsl:value-of select="exam"/></td>
			 </tr>
			 <tr>
		      <td>Ημερομηνία εξέτασης : <xsl:value-of select="dateofexam"/></td>
			 </tr>
			 <tr>
		      <td>Όνομα γιατρού : <xsl:value-of select="doc"/></td>
			 </tr>
             <tr>			 
			  <td>Λευκά αιμοσφαίρια : <xsl:value-of select="leykaaimo"/></td>
			 </tr>
			 <tr>
			  <td>Ερυθρά αιμοσφαίρια : <xsl:value-of select="ery8raaimo"/></td>
			 </tr>
			 <tr>
			  <td>Αιμοσφαιρίνη : <xsl:value-of select="aimosfairinh"/></td>
			 </tr>
			 <tr>
			  <td>Αιματοκρίτης : <xsl:value-of select="aimatokriths"/></td>
             </tr>
            </table>
           </div>
          </div>
         </xsl:for-each>		  
        </table> 
       </div>    
	  </div> <br/>
     </xsl:for-each>
   </div>
  </html>
 </xsl:template>
</xsl:stylesheet>  
  