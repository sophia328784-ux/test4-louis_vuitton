package androidx.media3.common;

import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes.dex */
public final class VideoSize {
    public static final VideoSize d = new VideoSize(0, 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f14022e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f14023f;
    public static final String g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f14024a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f14026c;

    static {
        String str = Util.f14242a;
        f14022e = Integer.toString(0, 36);
        f14023f = Integer.toString(1, 36);
        g = Integer.toString(3, 36);
    }

    public VideoSize(int i2, int i3, float f2) {
        this.f14024a = i2;
        this.f14025b = i3;
        this.f14026c = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoSize) {
            VideoSize videoSize = (VideoSize) obj;
            if (this.f14024a == videoSize.f14024a && this.f14025b == videoSize.f14025b && this.f14026c == videoSize.f14026c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f14026c) + ((((217 + this.f14024a) * 31) + this.f14025b) * 31);
    }

    public VideoSize(int i2, int i3) {
        this(i2, i3, 1.0f);
    }

    @Deprecated
    public VideoSize(int i2, int i3, int i4, float f2) {
        this(i2, i3, f2);
    }
}
