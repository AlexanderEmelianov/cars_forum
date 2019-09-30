<#include "security.ftl">

<div class="card-columns m-3 ">
<#list messages as message>
    <div class="card shadow p-2 mb-4 bg-white my-1" >
        <div class="p-2">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top  rounded"/>
            </#if>
        </div>
        <b>${message.id}</b>
        <div class="p-2">
            <span>${message.text}</span><br/>
        </div>
        <div class="px-2">
            <i>#${message.tag}</i>
        </div>
        <div class="card-footer text-muted">
            <strong><a href="/user-messages/${message.author.id}"> ${message.authorName}</a></strong>
            <#if message.author.id == currentUserId>
                <strong><a class="btn btn-outline-secondary mx-4" href="/user-messages/${message.author.id}?message=${message.id}">Edit</a></strong>
            </#if>
        </div>

    </div>
<#else>
    No messages
</#list>
</div>