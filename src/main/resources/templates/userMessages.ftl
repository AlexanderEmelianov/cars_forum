<#import "parts/common.ftl" as c>

<@c.page>
<h3>${userChannel.username}</h3>
    <#if !isCurrentUser>
        <#if isSubscriber>
            <a class="btn btn-light m-3" href="/user/subscribe/${userChannel.id}">Subscribe</a>
        <#else>
            <a class="btn btn-dark m-3" href="/user/subscribe/${userChannel.id}">Subscribe</a>
        </#if>
    </#if>
<div class="container">
    <div class="row">
        <div class="col">
            <div class="card shadow-sm p-3 mb-5 bg-white rounded">
                <div class="card-body">
                    <div class="card-title">Subscriptions</div>
                    <h2 class="card-text">
                        <a href="/user/subscriptions/${userChannel.id}/list">${subscriptionsCount}</a>
                    </h2>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card shadow-sm p-3 mb-5 bg-white rounded">
                <div class="card-body">
                    <div class="card-title">Subscribers</div>
                    <h2 class="card-text">
                        <a href="/user/subscribers/${userChannel.id}/list">${subscribersCount}</a>
                    </h2>
                </div>
            </div>
        </div>
    </div>
</div>
    <#if isCurrentUser>
        <#include "parts/messageEdit.ftl" />
    </#if>

    <#include "parts/messageList.ftl" />
</@c.page>