package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class VideoSize implements Bundleable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final VideoSize f28464f = new VideoSize(0, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28466c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f28467e;

    static {
        Util.e(0);
        Util.e(1);
        Util.e(2);
        Util.e(3);
    }

    public VideoSize(int i2, int i3, int i4, float f2) {
        this.f28465b = i2;
        this.f28466c = i3;
        this.d = i4;
        this.f28467e = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoSize) {
            VideoSize videoSize = (VideoSize) obj;
            if (this.f28465b == videoSize.f28465b && this.f28466c == videoSize.f28466c && this.d == videoSize.d && this.f28467e == videoSize.f28467e) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f28467e) + ((((((217 + this.f28465b) * 31) + this.f28466c) * 31) + this.d) * 31);
    }

    public VideoSize(int i2, int i3) {
        this(i2, i3, 0, 1.0f);
    }
}
