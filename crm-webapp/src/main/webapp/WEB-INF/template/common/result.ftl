<div id="message">
<#if resultBean?exists>
    <#if resultBean.errcode == '0'>
    <div class="alert zhj-alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>操作成功!</strong>
    </div>
    <#else>
    <div class="alert zhj-alert-danger alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>操作失败!</strong>${resultBean.errmsg}
    </div>
    </#if>
</#if>
</div>