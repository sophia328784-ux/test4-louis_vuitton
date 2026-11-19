package org.teleal.cling.model.message.header;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.a;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class UpnpHeader<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f78432b = Logger.getLogger(UpnpHeader.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f78433a;

    public enum Type {
        USN("USN", USNRootDeviceHeader.class, DeviceUSNHeader.class, ServiceUSNHeader.class, UDNHeader.class),
        NT("NT", RootDeviceHeader.class, UDADeviceTypeHeader.class, UDAServiceTypeHeader.class, DeviceTypeHeader.class, ServiceTypeHeader.class, UDNHeader.class, NTEventHeader.class),
        EASYLINK("EASYLINK", EASYLINKHeader.class),
        NTS("NTS", NTSHeader.class),
        HOST("HOST", HostHeader.class),
        SERVER("SERVER", ServerHeader.class),
        LOCATION("LOCATION", LocationHeader.class),
        MAX_AGE("CACHE-CONTROL", MaxAgeHeader.class),
        USER_AGENT("USER-AGENT", UserAgentHeader.class),
        CONTENT_TYPE("CONTENT-TYPE", ContentTypeHeader.class),
        MAN("MAN", MANHeader.class),
        MX("MX", MXHeader.class),
        ST("ST", STAllHeader.class, RootDeviceHeader.class, UDADeviceTypeHeader.class, UDAServiceTypeHeader.class, DeviceTypeHeader.class, ServiceTypeHeader.class, UDNHeader.class, EASYLINKHeader.class, STCustomHeader.class, DMSAllHeader.class),
        EXT("EXT", EXTHeader.class),
        SOAPACTION("SOAPACTION", SoapActionHeader.class),
        TIMEOUT(Payload.RESPONSE_TIMEOUT, TimeoutHeader.class),
        CALLBACK("CALLBACK", CallbackHeader.class),
        SID("SID", SubscriptionIdHeader.class),
        SEQ("SEQ", EventSequenceHeader.class),
        EXT_IFACE_MAC("X-CLING-IFACE-MAC", InterfaceMacHeader.class);

        private static Map<String, Type> byName;
        private Class<? extends UpnpHeader>[] headerTypes;
        private String httpName;

        /* JADX INFO: renamed from: org.teleal.cling.model.message.header.UpnpHeader$Type$1, reason: invalid class name */
        public class AnonymousClass1 extends HashMap<String, Type> {
        }

        static {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1();
            for (Type type : values()) {
                anonymousClass1.put(type.c(), type);
            }
            byName = anonymousClass1;
        }

        Type(String str, Class... clsArr) {
            this.httpName = str;
            this.headerTypes = clsArr;
        }

        public static Type a(String str) {
            if (str == null) {
                return null;
            }
            return byName.get(str.toUpperCase());
        }

        public final Class[] b() {
            return this.headerTypes;
        }

        public final String c() {
            return this.httpName;
        }

        public final boolean d(Class cls) {
            for (Class<? extends UpnpHeader> cls2 : this.headerTypes) {
                if (cls2.isAssignableFrom(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public abstract String a();

    public abstract void b(String str);

    public String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(getClass().getSimpleName());
        sb.append(") '");
        return a.n(sb, this.f78433a, "'");
    }
}
