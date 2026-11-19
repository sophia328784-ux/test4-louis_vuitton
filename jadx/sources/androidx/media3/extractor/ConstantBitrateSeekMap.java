package androidx.media3.extractor;

/* JADX INFO: loaded from: classes.dex */
public class ConstantBitrateSeekMap implements SeekMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16115a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16117c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16118e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f16119f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f16120h;

    public ConstantBitrateSeekMap(long j2, long j3, int i2, int i3, boolean z, boolean z2) {
        this.f16115a = j2;
        this.f16116b = j3;
        this.f16117c = i3 == -1 ? 1 : i3;
        this.f16118e = i2;
        this.g = z;
        this.f16120h = z2;
        if (j2 == -1) {
            this.d = -1L;
            this.f16119f = -9223372036854775807L;
        } else {
            long j4 = j2 - j3;
            this.d = j4;
            this.f16119f = (Math.max(0L, j4) * 8000000) / ((long) i2);
        }
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean b() {
        return this.f16120h;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints c(long j2) {
        long j3 = this.d;
        long j4 = this.f16116b;
        if (j3 == -1 && !this.g) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, j4));
        }
        int i2 = this.f16118e;
        long j5 = this.f16117c;
        long jMin = (((((long) i2) * j2) / 8000000) / j5) * j5;
        if (j3 != -1) {
            jMin = Math.min(jMin, j3 - j5);
        }
        long jMax = Math.max(jMin, 0L) + j4;
        long jMax2 = (Math.max(0L, jMax - j4) * 8000000) / ((long) i2);
        SeekPoint seekPoint = new SeekPoint(jMax2, jMax);
        if (j3 != -1 && jMax2 < j2) {
            long j6 = jMax + j5;
            if (j6 < this.f16115a) {
                return new SeekMap.SeekPoints(seekPoint, new SeekPoint((Math.max(0L, j6 - j4) * 8000000) / ((long) i2), j6));
            }
        }
        return new SeekMap.SeekPoints(seekPoint);
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean e() {
        return this.d != -1 || this.g;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long h() {
        return this.f16119f;
    }

    public ConstantBitrateSeekMap(long j2, long j3, int i2, int i3, boolean z) {
        this(j2, j3, i2, i3, z, true);
    }

    public ConstantBitrateSeekMap(long j2, long j3, int i2, int i3) {
        this(j2, j3, i2, i3, false);
    }
}
