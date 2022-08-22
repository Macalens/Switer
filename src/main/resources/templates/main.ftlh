<#import "parts/common.ftlh" as c>
<@c.page>
    <div class="form-row">
    <div class="form-group col-md-6">
    <form method="get" action="/main" class="form-inline">
        <input type="text" name="filter" value="${filter?if_exists}" placeholder="Search by tag">
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
    </div>
    </div>
    <div>
        <form method="post">
            <input type="text" name="text" placeholder="Enter your message">
            <input type="text" name="tag" placeholder="Tag">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit">Add</button>
        </form>
    </div>

    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
        No messages
    </#list>
</@c.page>