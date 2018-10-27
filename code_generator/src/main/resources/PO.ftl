package ${modulePackage}.po;

import com.github.jyoghurt.core.po.BasePO;
import lombok.Data;
import lombok.experimental.Accessors;
import javax.persistence.Column;

<#list fields as field>

<#if field.columnType == "enum">

import  ${field.classFullName};
    </#if>
</#list>

@Data
@Accessors(chain = true)
public class ${className}PO extends BasePO<${className}PO>{
<#list fields as field>

    /**
    *  ${field.comment}
    */
    @Column(name = "${field.columnName}")
	private ${field.className} ${field.codeName};
</#list>
}