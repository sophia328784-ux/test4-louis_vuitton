package androidx.media3.extractor.avi;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes.dex */
final class ChunkReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AviStreamHeaderChunk f16259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TrackOutput f16260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16261c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f16262e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16263f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f16264h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16265i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16266j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f16267k;
    public long l;
    public long[] m;
    public int[] n;

    public ChunkReader(int i2, AviStreamHeaderChunk aviStreamHeaderChunk, TrackOutput trackOutput) {
        this.f16259a = aviStreamHeaderChunk;
        int iA = aviStreamHeaderChunk.a();
        int i3 = aviStreamHeaderChunk.d;
        boolean z = true;
        if (iA != 1 && iA != 2) {
            z = false;
        }
        Preconditions.g(z);
        int i4 = (((i2 % 10) + 48) << 8) | ((i2 / 10) + 48);
        this.f16261c = (iA == 2 ? 1667497984 : 1651965952) | i4;
        long j2 = ((long) aviStreamHeaderChunk.f16255b) * 1000000;
        long j3 = aviStreamHeaderChunk.f16256c;
        String str = Util.f14242a;
        this.f16262e = Util.Z(i3, j2, j3, RoundingMode.DOWN);
        this.f16260b = trackOutput;
        this.d = iA == 2 ? i4 | 1650720768 : -1;
        this.l = -1L;
        this.m = new long[512];
        this.n = new int[512];
        this.f16263f = i3;
    }

    public final SeekPoint a(int i2) {
        return new SeekPoint((this.f16262e / ((long) this.f16263f)) * ((long) this.n[i2]), this.m[i2]);
    }

    public final SeekMap.SeekPoints b(long j2) {
        if (this.f16267k == 0) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.l));
        }
        int i2 = (int) (j2 / (this.f16262e / ((long) this.f16263f)));
        int iE = Util.e(this.n, i2, true, true);
        if (this.n[iE] == i2) {
            return new SeekMap.SeekPoints(a(iE));
        }
        SeekPoint seekPointA = a(iE);
        int i3 = iE + 1;
        return i3 < this.m.length ? new SeekMap.SeekPoints(seekPointA, a(i3)) : new SeekMap.SeekPoints(seekPointA);
    }
}
