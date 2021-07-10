<!-- prints the contents of stdin in reverse order -->

<root>
  <stack>stdin</stack>
  <var>
    <name>i</name>
    <value><int>0</int></value>
  </var>
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
        <push>
          <name>stdin</name>
          <name>c</name>
        </push>
	<add>
          <name>i</name>
	  <value><int>1</int></value>
	</add>
      </else>
    </if>
  </loop>
  <loop>
    <if>
      <le>
        <name>i</name>
	<value><int>0</int></value>
      </le>
      
      <body>
        <exec>break</exec>
      </body>
    </if>

    <pop>
      <name>stdin</name>
      <name>c</name>
    </pop>

    <exec>putc</exec>

    <sub>
      <name>i</name>
      <value><int>1</int></value>
    </sub>
  </loop>
</root>
