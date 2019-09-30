<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div class="mb-1">Add new user</div>
<div class="m-2">
${message?if_exists}
</div>
<@l.login "/registration" true/>
</@c.page>