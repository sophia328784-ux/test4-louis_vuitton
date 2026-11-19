package org.teleal.cling.model.message.header;

import com.linkplay.medialib.server.HttpServer;
import org.teleal.common.util.MimeType;

/* JADX INFO: loaded from: classes5.dex */
public class ContentTypeHeader extends UpnpHeader<MimeType> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final MimeType f78424c = MimeType.a(HttpServer.MIME_XML);
    public static final MimeType d = MimeType.a("text/xml;charset=\"utf-8\"");

    public ContentTypeHeader() {
        this.f78433a = f78424c;
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return ((MimeType) this.f78433a).toString();
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        this.f78433a = MimeType.a(str);
    }

    public ContentTypeHeader(MimeType mimeType) {
        this.f78433a = mimeType;
    }

    public ContentTypeHeader(String str) throws InvalidHeaderException {
        b(str);
    }
}
