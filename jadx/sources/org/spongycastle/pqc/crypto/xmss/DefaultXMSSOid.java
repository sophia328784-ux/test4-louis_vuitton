package org.spongycastle.pqc.crypto.xmss;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultXMSSOid implements XMSSOid {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f78146b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78147a;

    static {
        HashMap map = new HashMap();
        map.put(a("SHA-256", 32, 16, 67, 10), new DefaultXMSSOid("XMSS_SHA2-256_W16_H10"));
        map.put(a("SHA-256", 32, 16, 67, 16), new DefaultXMSSOid("XMSS_SHA2-256_W16_H16"));
        map.put(a("SHA-256", 32, 16, 67, 20), new DefaultXMSSOid("XMSS_SHA2-256_W16_H20"));
        map.put(a("SHA-512", 64, 16, 131, 10), new DefaultXMSSOid("XMSS_SHA2-512_W16_H10"));
        map.put(a("SHA-512", 64, 16, 131, 16), new DefaultXMSSOid("XMSS_SHA2-512_W16_H16"));
        map.put(a("SHA-512", 64, 16, 131, 20), new DefaultXMSSOid("XMSS_SHA2-512_W16_H20"));
        map.put(a("SHAKE128", 32, 16, 67, 10), new DefaultXMSSOid("XMSS_SHAKE128_W16_H10"));
        map.put(a("SHAKE128", 32, 16, 67, 16), new DefaultXMSSOid("XMSS_SHAKE128_W16_H16"));
        map.put(a("SHAKE128", 32, 16, 67, 20), new DefaultXMSSOid("XMSS_SHAKE128_W16_H20"));
        map.put(a("SHAKE256", 64, 16, 131, 10), new DefaultXMSSOid("XMSS_SHAKE256_W16_H10"));
        map.put(a("SHAKE256", 64, 16, 131, 16), new DefaultXMSSOid("XMSS_SHAKE256_W16_H16"));
        map.put(a("SHAKE256", 64, 16, 131, 20), new DefaultXMSSOid("XMSS_SHAKE256_W16_H20"));
        f78146b = Collections.unmodifiableMap(map);
    }

    public DefaultXMSSOid(String str) {
        this.f78147a = str;
    }

    public static String a(String str, int i2, int i3, int i4, int i5) {
        return str + "-" + i2 + "-" + i3 + "-" + i4 + "-" + i5;
    }

    public final String toString() {
        return this.f78147a;
    }
}
