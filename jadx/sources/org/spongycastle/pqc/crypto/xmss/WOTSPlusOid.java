package org.spongycastle.pqc.crypto.xmss;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class WOTSPlusOid implements XMSSOid {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f78165b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78166a;

    static {
        HashMap map = new HashMap();
        map.put(a(32, 67, "SHA-256"), new WOTSPlusOid("WOTSP_SHA2-256_W16"));
        map.put(a(64, 131, "SHA-512"), new WOTSPlusOid("WOTSP_SHA2-512_W16"));
        map.put(a(32, 67, "SHAKE128"), new WOTSPlusOid("WOTSP_SHAKE128_W16"));
        map.put(a(64, 131, "SHAKE256"), new WOTSPlusOid("WOTSP_SHAKE256_W16"));
        f78165b = Collections.unmodifiableMap(map);
    }

    public WOTSPlusOid(String str) {
        this.f78166a = str;
    }

    public static String a(int i2, int i3, String str) {
        return str + "-" + i2 + "-16-" + i3;
    }

    public final String toString() {
        return this.f78166a;
    }
}
