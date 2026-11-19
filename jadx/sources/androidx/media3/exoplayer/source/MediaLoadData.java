package androidx.media3.exoplayer.source;

import androidx.media3.common.Format;

/* JADX INFO: loaded from: classes.dex */
public final class MediaLoadData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15510a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15511b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Format f15512c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f15513e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f15514f;
    public final long g;

    public MediaLoadData(int i2) {
        this(i2, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
    }

    public MediaLoadData(int i2, int i3, Format format, int i4, Object obj, long j2, long j3) {
        this.f15510a = i2;
        this.f15511b = i3;
        this.f15512c = format;
        this.d = i4;
        this.f15513e = obj;
        this.f15514f = j2;
        this.g = j3;
    }
}
