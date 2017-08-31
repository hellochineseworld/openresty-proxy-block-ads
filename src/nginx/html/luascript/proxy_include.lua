local fullreq = ngx.var.host .. ngx.var.request_uri;
-- local blacklist = {}
-- table.insert(blacklist,"tanx.com");
-- table.insert(blacklist,"*.com/*ads.js");
-- file = io.open("/usr/local/openresty/nginx/html/luascript/myblacklist.txt" ,"r");
-- for line in file:lines() do
--     print(type(line));
--     table.insert(blacklist,line.trim());
-- end  
-- file:close();


for index,black in pairs(blacklist) do
    -- print(index,black);
    local m, err = ngx.re.match(fullreq, black);
    if not err then
        if m then
            print("ads blocked:" .. black .. "::::::::::" .. fullreq);
            return ngx.exit(ngx.HTTP_FORBIDDEN);
        end
    end
end
--print(ngx.var.request_uri);
--print(ngx.var.request_method);
--print(ngx.var.host);
--print(fullreq);
