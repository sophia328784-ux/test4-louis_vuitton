package org.teleal.cling.support.model;

import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes5.dex */
public enum Protocol {
    ALL(Browse.CAPS_WILDCARD),
    HTTP_GET("http-get"),
    RTSP_RTP_UDP("rtsp-rtp-udp"),
    INTERNAL("internal"),
    IEC61883("iec61883");

    private String protocolString;

    Protocol(String str) {
        this.protocolString = str;
    }

    public static Protocol a(String str) {
        for (Protocol protocol : values()) {
            if (protocol.protocolString.equals(str)) {
                return protocol;
            }
        }
        return null;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.protocolString;
    }
}
