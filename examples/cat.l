<!-- prints the contents of stdin -->

<root>
  <loop>
    <exec>feof</exec>
    <if>
      <gr>
        <name>f</name>
        <value><int>0</int></value>
      </gr>
  
      <body>
        <exec>break</exec>
      </body>
  
      <else>
        <exec>getc</exec>
        <exec>putc</exec>
      </else>
    </if>
  </loop>
</root>
