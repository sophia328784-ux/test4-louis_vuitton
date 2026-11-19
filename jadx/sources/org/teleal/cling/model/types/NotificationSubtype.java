package org.teleal.cling.model.types;

/* JADX INFO: loaded from: classes5.dex */
public enum NotificationSubtype {
    ALIVE("ssdp:alive"),
    UPDATE("ssdp:update"),
    BYEBYE("ssdp:byebye"),
    ALL("ssdp:wiimudevice"),
    ALLSSDP("ssdp:all"),
    DMSALL("urn:schemas-upnp-org:device:MediaServer:1"),
    DMALL("urn:schemas-upnp-org:device:MediaRenderer:1"),
    EASYLINK("ssdp:easylink"),
    DISCOVER("ssdp:discover"),
    PROPCHANGE("upnp:propchange"),
    GETWAYDEVICE("urn:schemas-upnp-org:device:InternetGatewayDevice:1"),
    WFADEVICE("urn:schemas-wifialliance-org:device:WFADevice:1"),
    ContentDirectory("urn:schemas-upnp-org:service:ContentDirectory:1"),
    OLD("ssdp:export");

    private String headerString;

    NotificationSubtype(String str) {
        this.headerString = str;
    }

    public final String a() {
        return this.headerString;
    }
}
