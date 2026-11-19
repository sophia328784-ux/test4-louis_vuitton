package org.spongycastle.pqc.crypto.xmss;

import defpackage.d21;
import defpackage.tr;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultXMSSMTOid implements XMSSOid {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f78144b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78145a;

    static {
        HashMap map = new HashMap();
        tr.z("XMSSMT_SHA2-256_W16_H20_D2", a("SHA-256", 32, 16, 67, 20, 2), map);
        tr.z("XMSSMT_SHA2-256_W16_H20_D4", a("SHA-256", 32, 16, 67, 20, 4), map);
        tr.z("XMSSMT_SHA2-256_W16_H40_D2", a("SHA-256", 32, 16, 67, 40, 2), map);
        tr.z("XMSSMT_SHA2-256_W16_H40_D4", a("SHA-256", 32, 16, 67, 40, 2), map);
        tr.z("XMSSMT_SHA2-256_W16_H40_D8", a("SHA-256", 32, 16, 67, 40, 4), map);
        tr.z("XMSSMT_SHA2-256_W16_H60_D3", a("SHA-256", 32, 16, 67, 60, 8), map);
        tr.z("XMSSMT_SHA2-256_W16_H60_D6", a("SHA-256", 32, 16, 67, 60, 6), map);
        tr.z("XMSSMT_SHA2-256_W16_H60_D12", a("SHA-256", 32, 16, 67, 60, 12), map);
        tr.z("XMSSMT_SHA2-512_W16_H20_D2", a("SHA2-512", 64, 16, 131, 20, 2), map);
        tr.z("XMSSMT_SHA2-512_W16_H20_D4", a("SHA2-512", 64, 16, 131, 20, 4), map);
        tr.z("XMSSMT_SHA2-512_W16_H40_D2", a("SHA2-512", 64, 16, 131, 40, 2), map);
        tr.z("XMSSMT_SHA2-512_W16_H40_D4", a("SHA2-512", 64, 16, 131, 40, 4), map);
        tr.z("XMSSMT_SHA2-512_W16_H40_D8", a("SHA2-512", 64, 16, 131, 40, 8), map);
        tr.z("XMSSMT_SHA2-512_W16_H60_D3", a("SHA2-512", 64, 16, 131, 60, 3), map);
        tr.z("XMSSMT_SHA2-512_W16_H60_D6", a("SHA2-512", 64, 16, 131, 60, 6), map);
        tr.z("XMSSMT_SHA2-512_W16_H60_D12", a("SHA2-512", 64, 16, 131, 60, 12), map);
        tr.z("XMSSMT_SHAKE128_W16_H20_D2", a("SHAKE128", 32, 16, 67, 20, 2), map);
        tr.z("XMSSMT_SHAKE128_W16_H20_D4", a("SHAKE128", 32, 16, 67, 20, 4), map);
        tr.z("XMSSMT_SHAKE128_W16_H40_D2", a("SHAKE128", 32, 16, 67, 40, 2), map);
        tr.z("XMSSMT_SHAKE128_W16_H40_D4", a("SHAKE128", 32, 16, 67, 40, 4), map);
        tr.z("XMSSMT_SHAKE128_W16_H40_D8", a("SHAKE128", 32, 16, 67, 40, 8), map);
        tr.z("XMSSMT_SHAKE128_W16_H60_D3", a("SHAKE128", 32, 16, 67, 60, 3), map);
        tr.z("XMSSMT_SHAKE128_W16_H60_D6", a("SHAKE128", 32, 16, 67, 60, 6), map);
        tr.z("XMSSMT_SHAKE128_W16_H60_D12", a("SHAKE128", 32, 16, 67, 60, 12), map);
        tr.z("XMSSMT_SHAKE256_W16_H20_D2", a("SHAKE256", 64, 16, 131, 20, 2), map);
        tr.z("XMSSMT_SHAKE256_W16_H20_D4", a("SHAKE256", 64, 16, 131, 20, 4), map);
        tr.z("XMSSMT_SHAKE256_W16_H40_D2", a("SHAKE256", 64, 16, 131, 40, 2), map);
        tr.z("XMSSMT_SHAKE256_W16_H40_D4", a("SHAKE256", 64, 16, 131, 40, 4), map);
        tr.z("XMSSMT_SHAKE256_W16_H40_D8", a("SHAKE256", 64, 16, 131, 40, 8), map);
        tr.z("XMSSMT_SHAKE256_W16_H60_D3", a("SHAKE256", 64, 16, 131, 60, 3), map);
        tr.z("XMSSMT_SHAKE256_W16_H60_D6", a("SHAKE256", 64, 16, 131, 60, 6), map);
        map.put(a("SHAKE256", 64, 16, 131, 60, 12), new DefaultXMSSMTOid("XMSSMT_SHAKE256_W16_H60_D12"));
        f78144b = Collections.unmodifiableMap(map);
    }

    public DefaultXMSSMTOid(String str) {
        this.f78145a = str;
    }

    public static String a(String str, int i2, int i3, int i4, int i5, int i6) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("-");
        sb.append(i2);
        sb.append("-");
        sb.append(i3);
        tr.w(i4, i5, "-", "-", sb);
        return d21.f(i6, "-", sb);
    }

    public final String toString() {
        return this.f78145a;
    }
}
