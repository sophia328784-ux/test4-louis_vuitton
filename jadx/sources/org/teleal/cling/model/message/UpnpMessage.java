package org.teleal.cling.model.message;

import defpackage.x1;
import org.teleal.cling.model.message.UpnpOperation;
import org.teleal.cling.model.message.header.ContentTypeHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.common.util.MimeType;

/* JADX INFO: loaded from: classes5.dex */
public abstract class UpnpMessage<O extends UpnpOperation> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UpnpOperation f78411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public UpnpHeaders f78412c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public BodyType f78413e;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class BodyType {
        private static final /* synthetic */ BodyType[] $VALUES;
        public static final BodyType BYTES;
        public static final BodyType STRING;

        static {
            BodyType bodyType = new BodyType("STRING", 0);
            STRING = bodyType;
            BodyType bodyType2 = new BodyType("BYTES", 1);
            BYTES = bodyType2;
            $VALUES = new BodyType[]{bodyType, bodyType2};
        }

        public static BodyType valueOf(String str) {
            return (BodyType) Enum.valueOf(BodyType.class, str);
        }

        public static BodyType[] values() {
            return (BodyType[]) $VALUES.clone();
        }
    }

    public UpnpMessage(UpnpMessage upnpMessage) {
        this.f78410a = 1;
        this.f78412c = new UpnpHeaders();
        this.f78413e = BodyType.STRING;
        this.f78411b = upnpMessage.f78411b;
        this.f78412c = upnpMessage.f78412c;
        this.d = upnpMessage.d;
        this.f78413e = upnpMessage.f78413e;
        this.f78410a = upnpMessage.f78410a;
    }

    public final void a(BodyType bodyType, String str) {
        this.f78413e = bodyType;
        this.d = str;
    }

    public final byte[] c() {
        try {
            if (!f()) {
                return null;
            }
            boolean zEquals = this.f78413e.equals(BodyType.STRING);
            Object obj = this.d;
            return zEquals ? ((String) obj).getBytes("UTF-8") : (byte[]) obj;
        } catch (Exception e2) {
            x1.m(e2);
            return null;
        }
    }

    public final String d() {
        try {
            if (f()) {
                return this.f78413e.equals(BodyType.STRING) ? this.d.toString() : new String((byte[]) this.d, "UTF-8");
            }
            return null;
        } catch (Exception e2) {
            x1.m(e2);
            return null;
        }
    }

    public final String e() {
        ContentTypeHeader contentTypeHeader = (ContentTypeHeader) this.f78412c.k(UpnpHeader.Type.CONTENT_TYPE, ContentTypeHeader.class);
        if (contentTypeHeader != null) {
            return (String) ((MimeType) contentTypeHeader.f78433a).f78648c.get("charset");
        }
        return null;
    }

    public final boolean f() {
        return this.d != null;
    }

    public String toString() {
        return "(" + getClass().getSimpleName() + ") " + this.f78411b.toString();
    }

    public UpnpMessage(UpnpOperation upnpOperation) {
        this.f78410a = 1;
        this.f78412c = new UpnpHeaders();
        this.f78413e = BodyType.STRING;
        this.f78411b = upnpOperation;
    }

    public UpnpMessage(UpnpOperation upnpOperation, BodyType bodyType, Object obj) {
        this.f78410a = 1;
        this.f78412c = new UpnpHeaders();
        this.f78411b = upnpOperation;
        this.f78413e = bodyType;
        this.d = obj;
    }
}
