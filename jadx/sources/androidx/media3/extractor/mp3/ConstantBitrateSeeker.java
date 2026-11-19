package androidx.media3.extractor.mp3;

import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.MpegAudioUtil;

/* JADX INFO: loaded from: classes.dex */
final class ConstantBitrateSeeker extends ConstantBitrateSeekMap implements Seeker {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f16458i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f16459j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f16460k;
    public final boolean l;
    public final long m;

    public ConstantBitrateSeeker(long j2, long j3, int i2, int i3, boolean z, boolean z2) {
        super(j2, j3, i2, i3, z, z2);
        this.f16458i = j3;
        this.f16459j = i2;
        this.f16460k = i3;
        this.l = z;
        this.m = j2 == -1 ? -1L : j2;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long a() {
        return this.f16458i;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long d() {
        return this.m;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long f(long j2) {
        return (Math.max(0L, j2 - this.f16116b) * 8000000) / ((long) this.f16118e);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final int g() {
        return this.f16459j;
    }

    public ConstantBitrateSeeker(long j2, long j3, int i2, int i3, boolean z) {
        this(j2, j3, i2, i3, z, true);
    }

    public ConstantBitrateSeeker(long j2, long j3, MpegAudioUtil.Header header, boolean z) {
        this(j2, j3, header.f16189f, header.f16187c, z, true);
    }
}
