
	public static enum FieldNamesEnum {
	<#list pojo.getAllPropertiesIterator() as x>
		${x.name}<#if x_has_next>,<#else>;</#if>
	</#list>  
	}
