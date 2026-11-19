package androidx.media3.extractor.avi;

import androidx.media3.common.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class AviStreamHeaderChunk implements AviChunk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16254a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16256c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16257e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16258f;

    public AviStreamHeaderChunk(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f16254a = i2;
        this.f16255b = i3;
        this.f16256c = i4;
        this.d = i5;
        this.f16257e = i6;
        this.f16258f = i7;
    }

    public final int a() {
        int i2 = this.f16254a;
        if (i2 == 1935960438) {
            return 2;
        }
        if (i2 == 1935963489) {
            return 1;
        }
        if (i2 == 1937012852) {
            return 3;
        }
        Log.g("Found unsupported streamType fourCC: " + Integer.toHexString(i2));
        return -1;
    }

    @Override // androidx.media3.extractor.avi.AviChunk
    public final int getType() {
        return 1752331379;
    }
}
