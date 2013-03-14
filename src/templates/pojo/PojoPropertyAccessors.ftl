<#-- // Property accessors -->
<#foreach property in pojo.getAllPropertiesIterator()>
<#if pojo.getMetaAttribAsBool(property, "gen-property", true)>
 <#if pojo.hasFieldJavaDoc(property)>    
    /**       
     * ${pojo.getFieldJavaDoc(property, 4)}
     */
</#if>
	<#if property.name?cap_first = pojo.getDeclarationName()+"Id">  
	@Override  
	${pojo.getPropertyGetModifiers(property)} ${pojo.getJavaTypeName(property, jdk5)} getPk() {
        return this.${property.name};
    }
    
    @Override
    ${pojo.getPropertySetModifiers(property)} void setPk(${pojo.getJavaTypeName(property, jdk5)} pk) {
        this.${property.name} = pk;
    }
	</#if>
    
    <#include "GetPropertyAnnotation.ftl"/>
    ${pojo.getPropertyGetModifiers(property)} ${pojo.getJavaTypeName(property, jdk5)} ${pojo.getGetterSignature(property)}() {
        return this.${property.name};
    }
    
    ${pojo.getPropertySetModifiers(property)} void set${pojo.getPropertyName(property)}(${pojo.getJavaTypeName(property, jdk5)} ${property.name}) {
        this.${property.name} = ${property.name};
    }
</#if>
</#foreach>
