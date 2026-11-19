package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SniffFailure;
import defpackage.a;

/* JADX INFO: loaded from: classes.dex */
public final class AtomSizeTooSmallSniffFailure implements SniffFailure {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16499c;

    public AtomSizeTooSmallSniffFailure(int i2, long j2, int i3) {
        this.f16497a = i2;
        this.f16498b = j2;
        this.f16499c = i3;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AtomSizeTooSmall{type=");
        sb.append(Util.d0(this.f16497a));
        sb.append(", size=");
        sb.append(this.f16498b);
        sb.append(", minHeaderSize=");
        return a.i(this.f16499c, "}", sb);
    }
}
