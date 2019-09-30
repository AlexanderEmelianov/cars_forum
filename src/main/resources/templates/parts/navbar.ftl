<#include "security.ftl">
<#import "login.ftl" as l>


<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="/">E-Cars Forum</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse " id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/main">Messages</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/user-messages/${currentUserId}">My messages</a>
            </li>
        <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link " href="/user">User list</a>
            </li>
        </#if>
        <#if user??>
            <li class="nav-item">
                <a class="nav-link " href="/user/profile">Profile</a>
            </li>
        </#if>
        <#if known>
            <form method="get" action="/main" class="form-inline mx-2 ">
                <input name="filter" class="form-control mr-sm-2 mx-auto" style="width: 300px;" type="search" placeholder="Search by #tag" value="${filter?if_exists}" aria-label="Search"/>
                <button class="btn btn-outline-info my-2 my-sm-0 mx-auto text-white" style="width: 100px;" type="submit">Search</button>
            </form>
        </#if>
        </ul>

        <div  class="navbar-text mr-3"><#if user??>${name}<#else>Please, login</#if></div>
    <@l.logout />

    </div>
</nav>
