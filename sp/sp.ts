// how do i install this package? npm install @pnp/sp --save
// how do i install this package? npm install @pnp/logging --save
// how do i install pnp graph? npm install @pnp/graph --save

// how to use pnp/sp in typescript
// https://pnp.github.io/pnpjs/sp/docs/sp/

// login to sharepoint online and retrieve a list of items from a site
import { sp } from "@pnp/sp";
import { ConsoleListener, Logger, LogLevel } from "@pnp/logging";

// setup logging
Logger.subscribe(ConsoleListener());
Logger.activeLogLevel = LogLevel.Info;

// setup the site we will be working with
sp.setup({
    sp: {
        headers: {
            Accept: "application/json;odata=verbose",                        
        },
        baseUrl: "https://contoso.sharepoint.com/sites/contoso",
    },
});

// get the current user
sp.web.currentUser.get().then(console.log);

// get the current user's groups
sp.web.currentUser.groups.get().then(console.log);

// get the current user's groups and expand the users collection
sp.web.currentUser.groups.expand("Users").get().then(console.log);

// get the current user's groups and expand the users collection and then filter the users collection
sp.web.currentUser.groups.expand("Users").get().then((groups) => {
    groups.forEach((group) => {
        group.Users.filter("Title eq 'John Doe'").get().then(console.log);
    });
}

// authenitcate to sharepoint online using msal
import { sp } from "@pnp/sp";
import { ConsoleListener, Logger, LogLevel } from "@pnp/logging";
import { MsalAuthenticator } from "@pnp/nodejs";

// setup logging
Logger.subscribe(ConsoleListener());
Logger.activeLogLevel = LogLevel.Info;

// setup the site we will be working with
sp.setup({
    sp: {
        baseUrl: "https://contoso.sharepoint.com/sites/contoso",
        authenticator: new MsalAuthenticator({
            authOptions: {
                clientId: "your client id",
                authority: "https://login.microsoftonline.com/your tenant id",
            },
            scopes: ["https://contoso.sharepoint.com/.default"],
        }),
    },
});

// get the current user
sp.web.currentUser.get().then(console.log);

// get a list of sites the user has access to
sp.web.webs.get().then(console.log);

// get a list of items from a list
sp.web.lists.getByTitle("My List").items.get().then(console.log);



// Path: sp\sp.ts

