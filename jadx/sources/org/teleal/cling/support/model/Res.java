package org.teleal.cling.support.model;

import java.net.URI;
import org.teleal.common.util.MimeType;

/* JADX INFO: loaded from: classes5.dex */
public class Res {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f78597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f78598b;

    public Res(MimeType mimeType, Long l, String str, Long l2, String str2) {
        this(new ProtocolInfo(mimeType), l, str, l2, str2);
    }

    public Res() {
    }

    public Res(MimeType mimeType, Long l, String str) {
        this(new ProtocolInfo(mimeType), l, str);
    }

    public Res(ProtocolInfo protocolInfo, Long l, String str) {
        this.f78598b = str;
    }

    public Res(ProtocolInfo protocolInfo, Long l, String str, Long l2, String str2) {
        this.f78597a = str;
        this.f78598b = str2;
    }

    public Res(URI uri, ProtocolInfo protocolInfo, Long l, String str, Long l2, Long l3, Long l4, Long l5, Long l6, String str2, String str3, String str4) {
        this.f78597a = str;
        this.f78598b = str4;
    }
}
