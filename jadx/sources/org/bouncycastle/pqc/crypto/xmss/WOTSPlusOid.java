package org.bouncycastle.pqc.crypto.xmss;

import defpackage.d21;
import defpackage.r81;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class WOTSPlusOid implements XMSSOid {
    private static final Map<String, WOTSPlusOid> oidLookupTable;
    private final int oid;
    private final String stringRepresentation;

    static {
        HashMap map = new HashMap();
        map.put(createKey("SHA-256", 32, 16, 67), new WOTSPlusOid(16777217, "WOTSP_SHA2-256_W16"));
        map.put(createKey("SHA-512", 64, 16, 131), new WOTSPlusOid(33554434, "WOTSP_SHA2-512_W16"));
        map.put(createKey("SHAKE128", 32, 16, 67), new WOTSPlusOid(50331651, "WOTSP_SHAKE128_W16"));
        map.put(createKey("SHAKE256", 64, 16, 131), new WOTSPlusOid(67108868, "WOTSP_SHAKE256_W16"));
        oidLookupTable = Collections.unmodifiableMap(map);
    }

    private WOTSPlusOid(int i2, String str) {
        this.oid = i2;
        this.stringRepresentation = str;
    }

    private static String createKey(String str, int i2, int i3, int i4) {
        if (str == null) {
            r81.d("algorithmName == null");
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("-");
        sb.append(i2);
        sb.append("-");
        sb.append(i3);
        return d21.f(i4, "-", sb);
    }

    public static WOTSPlusOid lookup(String str, int i2, int i3, int i4) {
        if (str != null) {
            return oidLookupTable.get(createKey(str, i2, i3, i4));
        }
        r81.d("algorithmName == null");
        return null;
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSOid
    public int getOid() {
        return this.oid;
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSOid
    public String toString() {
        return this.stringRepresentation;
    }
}
