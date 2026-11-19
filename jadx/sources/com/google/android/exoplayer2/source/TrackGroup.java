package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import defpackage.fc;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class TrackGroup implements Bundleable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28307c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Format[] f28308e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f28309f;

    static {
        Util.e(0);
        Util.e(1);
    }

    public TrackGroup(String str, Format... formatArr) {
        Assertions.a(formatArr.length > 0);
        this.f28307c = str;
        this.f28308e = formatArr;
        this.f28306b = formatArr.length;
        int iB = MimeTypes.b(formatArr[0].f28145e);
        if (iB == -1) {
            formatArr[0].getClass();
            iB = MimeTypes.b(null);
        }
        this.d = iB;
        formatArr[0].getClass();
        formatArr[0].getClass();
        for (int i2 = 1; i2 < formatArr.length; i2++) {
            formatArr[i2].getClass();
            formatArr[i2].getClass();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && TrackGroup.class == obj.getClass()) {
            TrackGroup trackGroup = (TrackGroup) obj;
            if (this.f28307c.equals(trackGroup.f28307c) && Arrays.equals(this.f28308e, trackGroup.f28308e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f28309f == 0) {
            this.f28309f = fc.b(527, 31, this.f28307c) + Arrays.hashCode(this.f28308e);
        }
        return this.f28309f;
    }

    public TrackGroup(Format... formatArr) {
        this("", formatArr);
    }
}
