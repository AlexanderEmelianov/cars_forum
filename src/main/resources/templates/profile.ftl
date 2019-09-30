<#import "parts/common.ftl" as c>

<@c.page>
<h5>${username}</h5>
${message?if_exists}

<form method="post">
        <div class="form-group">
            <label class ="col-sm-2 col-form-label"> Email: </label>
            <div class="col-sm-5">
                
                <input type="email" name="email" class="form-control" placeholder="email@some.com" value="${email!''}"/>
            </div>
        </div>

    <div class="form-group">
        <label class ="col-sm-2 col-form-label"> Password: </label>
        <div class="col-sm-5">
            <input type="password" name="password" class="form-control" placeholder="Enter password"/>
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button class="btn btn-primary" type="submit" >Save</button>
</form>
</@c.page>