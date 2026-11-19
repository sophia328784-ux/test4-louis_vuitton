package com.perfectcorp.thirdparty.com.getkeepsafe.relinker;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.n00;
import defpackage.pq0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends RuntimeException {
    /* JADX WARN: Illegal instructions before constructor call */
    public b(String str, String[] strArr, String[] strArr2) {
        StringBuilder sbR = pq0.r("Could not find '", str, "'. Looked for: ");
        sbR.append(Arrays.toString(strArr));
        sbR.append(", but only found: ");
        super(n00.r(Arrays.toString(strArr2), FileUtils.HIDDEN_PREFIX, sbR));
    }
}
