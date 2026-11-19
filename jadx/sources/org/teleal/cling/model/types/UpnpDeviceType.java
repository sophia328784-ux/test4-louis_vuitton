package org.teleal.cling.model.types;

import com.android.wiimu.upnp.impl.f;

/* JADX INFO: loaded from: classes5.dex */
public enum UpnpDeviceType {
    MediaServer("MediaServer"),
    MediaRenderer("MediaRenderer"),
    ContentDirectory(f.d),
    InternetGatewayDevice("InternetGatewayDevice"),
    WFADevice("WFADevice");

    private String headerString;

    UpnpDeviceType(String str) {
        this.headerString = str;
    }

    public final String a() {
        return this.headerString;
    }
}
