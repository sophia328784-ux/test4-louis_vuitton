package androidx.media3.exoplayer.trackselection;

import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.UnmodifiableListIterator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdaptiveTrackSelection extends BaseTrackSelection {
    public final BandwidthMeter g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f15670h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f15671i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f15672j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f15673k;
    public final int l;
    public final float m;
    public final float n;
    public final ImmutableList o;
    public final Clock p;
    public float q;
    public int r;
    public int s;
    public long t;
    public MediaChunk u;
    public long v;

    public static final class AdaptationCheckpoint {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f15674a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15675b;

        public AdaptationCheckpoint(long j2, long j3) {
            this.f15674a = j2;
            this.f15675b = j3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdaptationCheckpoint)) {
                return false;
            }
            AdaptationCheckpoint adaptationCheckpoint = (AdaptationCheckpoint) obj;
            return this.f15674a == adaptationCheckpoint.f15674a && this.f15675b == adaptationCheckpoint.f15675b;
        }

        public final int hashCode() {
            return (((int) this.f15674a) * 31) + ((int) this.f15675b);
        }
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, int i2, BandwidthMeter bandwidthMeter, long j2, long j3, long j4, int i3, int i4, float f2, float f3, ImmutableList immutableList, Clock clock) {
        long j5;
        super(trackGroup, iArr, i2);
        if (j4 < j2) {
            Log.g("Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j5 = j2;
        } else {
            j5 = j4;
        }
        this.g = bandwidthMeter;
        this.f15670h = j2 * 1000;
        this.f15671i = j3 * 1000;
        this.f15672j = j5 * 1000;
        this.f15673k = i3;
        this.l = i4;
        this.m = f2;
        this.n = f3;
        this.o = ImmutableList.t(immutableList);
        this.p = clock;
        this.q = 1.0f;
        this.s = 0;
        this.t = -9223372036854775807L;
        this.v = -2147483647L;
    }

    public static void v(ArrayList arrayList, long[] jArr) {
        long j2 = 0;
        for (long j3 : jArr) {
            j2 += j3;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ImmutableList.Builder builder = (ImmutableList.Builder) arrayList.get(i2);
            if (builder != null) {
                builder.e(new AdaptationCheckpoint(j2, jArr[i2]));
            }
        }
    }

    public static long x(List list) {
        if (!list.isEmpty()) {
            MediaChunk mediaChunk = (MediaChunk) Iterables.b(list);
            long j2 = mediaChunk.g;
            if (j2 != -9223372036854775807L) {
                long j3 = mediaChunk.f15653h;
                if (j3 != -9223372036854775807L) {
                    return j3 - j2;
                }
            }
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final long a() {
        return this.v;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final void c() {
        this.u = null;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final int d() {
        return this.r;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final void g(long j2, long j3, long j4, List list, MediaChunkIterator[] mediaChunkIteratorArr) {
        long jX;
        long jB = this.p.b();
        int i2 = this.r;
        int i3 = 0;
        if (i2 >= mediaChunkIteratorArr.length || !mediaChunkIteratorArr[i2].next()) {
            int length = mediaChunkIteratorArr.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    jX = x(list);
                    break;
                }
                MediaChunkIterator mediaChunkIterator = mediaChunkIteratorArr[i4];
                if (mediaChunkIterator.next()) {
                    jX = mediaChunkIterator.b() - mediaChunkIterator.a();
                    break;
                }
                i4++;
            }
        } else {
            MediaChunkIterator mediaChunkIterator2 = mediaChunkIteratorArr[this.r];
            jX = mediaChunkIterator2.b() - mediaChunkIterator2.a();
        }
        int i5 = this.s;
        if (i5 == 0) {
            this.s = 1;
            this.r = w(jB, jX);
            return;
        }
        int i6 = this.r;
        boolean zIsEmpty = list.isEmpty();
        Format[] formatArr = this.d;
        if (!zIsEmpty) {
            Format format = ((MediaChunk) Iterables.b(list)).d;
            while (true) {
                if (i3 >= this.f15683b) {
                    i3 = -1;
                    break;
                } else if (formatArr[i3] == format) {
                    break;
                } else {
                    i3++;
                }
            }
        } else {
            i3 = -1;
            break;
        }
        if (i3 != -1) {
            i5 = ((MediaChunk) Iterables.b(list)).f15651e;
            i6 = i3;
        }
        int iW = w(jB, jX);
        if (iW != i6 && !b(i6, jB)) {
            Format format2 = formatArr[i6];
            Format format3 = formatArr[iW];
            long jMin = this.f15670h;
            if (j4 != -9223372036854775807L) {
                jMin = Math.min((long) ((jX != -9223372036854775807L ? j4 - jX : j4) * this.n), jMin);
            }
            int i7 = format3.f13762j;
            int i8 = format2.f13762j;
            if ((i7 > i8 && j3 < jMin) || (i7 < i8 && j3 >= this.f15671i)) {
                iW = i6;
            }
        }
        if (iW != i6) {
            i5 = 3;
        }
        this.s = i5;
        this.r = iW;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final void i(float f2) {
        this.q = f2;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final Object j() {
        return null;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final void p() {
        this.t = -9223372036854775807L;
        this.u = null;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final int q(long j2, List list) {
        int i2;
        int i3;
        long jB = this.p.b();
        long j3 = this.t;
        if (j3 != -9223372036854775807L && jB - j3 < 1000 && (list.isEmpty() || ((MediaChunk) Iterables.b(list)).equals(this.u))) {
            return list.size();
        }
        this.t = jB;
        this.u = list.isEmpty() ? null : (MediaChunk) Iterables.b(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long jD = Util.D(this.q, ((MediaChunk) list.get(size - 1)).g - j2);
        long j4 = this.f15672j;
        if (jD >= j4) {
            Format format = this.d[w(jB, x(list))];
            for (int i4 = 0; i4 < size; i4++) {
                MediaChunk mediaChunk = (MediaChunk) list.get(i4);
                Format format2 = mediaChunk.d;
                if (Util.D(this.q, mediaChunk.g - j2) >= j4 && format2.f13762j < format.f13762j && (i2 = format2.w) != -1 && i2 <= this.l && (i3 = format2.v) != -1 && i3 <= this.f15673k && i2 < format.w) {
                    return i4;
                }
            }
        }
        return size;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final int t() {
        return this.s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int w(long j2, long j3) {
        long jE = this.g.e();
        this.v = jE;
        long j4 = (long) (((long) (jE * this.m)) / this.q);
        ImmutableList immutableList = this.o;
        if (!immutableList.isEmpty()) {
            int i2 = 1;
            while (i2 < immutableList.size() - 1 && ((AdaptationCheckpoint) immutableList.get(i2)).f15674a < j4) {
                i2++;
            }
            AdaptationCheckpoint adaptationCheckpoint = (AdaptationCheckpoint) immutableList.get(i2 - 1);
            AdaptationCheckpoint adaptationCheckpoint2 = (AdaptationCheckpoint) immutableList.get(i2);
            long j5 = adaptationCheckpoint.f15674a;
            float f2 = (j4 - j5) / (adaptationCheckpoint2.f15674a - j5);
            long j6 = adaptationCheckpoint.f15675b;
            j4 = ((long) (f2 * (adaptationCheckpoint2.f15675b - j6))) + j6;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f15683b; i4++) {
            if (j2 == Long.MIN_VALUE || !b(i4, j2)) {
                if (this.d[i4].f13762j <= j4) {
                    return i4;
                }
                i3 = i4;
            }
        }
        return i3;
    }

    public static class Factory implements ExoTrackSelection.Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15676a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f15677b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15678c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f15679e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float f15680f;
        public final float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Clock f15681h;

        public Factory(int i2, int i3, int i4, int i5, int i6, float f2, float f3, Clock clock) {
            this.f15676a = i2;
            this.f15677b = i3;
            this.f15678c = i4;
            this.d = i5;
            this.f15679e = i6;
            this.f15680f = f2;
            this.g = f3;
            this.f15681h = clock;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection.Factory
        public final ExoTrackSelection[] a(ExoTrackSelection.Definition[] definitionArr, BandwidthMeter bandwidthMeter) {
            int i2;
            long j2;
            int i3;
            long j3;
            ExoTrackSelection.Definition[] definitionArr2 = definitionArr;
            ArrayList arrayList = new ArrayList();
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i2 = 1;
                if (i5 >= definitionArr2.length) {
                    break;
                }
                ExoTrackSelection.Definition definition = definitionArr2[i5];
                if (definition == null || definition.f15721b.length <= 1) {
                    arrayList.add(null);
                } else {
                    UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                    ImmutableList.Builder builder = new ImmutableList.Builder();
                    builder.e(new AdaptationCheckpoint(0L, 0L));
                    arrayList.add(builder);
                }
                i5++;
            }
            int length = definitionArr2.length;
            long[][] jArr = new long[length][];
            int i6 = 0;
            while (true) {
                j2 = -1;
                if (i6 >= definitionArr2.length) {
                    break;
                }
                ExoTrackSelection.Definition definition2 = definitionArr2[i6];
                if (definition2 == null) {
                    jArr[i6] = new long[0];
                } else {
                    int[] iArr = definition2.f15721b;
                    jArr[i6] = new long[iArr.length];
                    for (int i7 = 0; i7 < iArr.length; i7++) {
                        long j4 = definition2.f15720a.d[iArr[i7]].f13762j;
                        long[] jArr2 = jArr[i6];
                        if (j4 == -1) {
                            j4 = 0;
                        }
                        jArr2[i7] = j4;
                    }
                    Arrays.sort(jArr[i6]);
                }
                i6++;
            }
            int[] iArr2 = new int[length];
            long[] jArr3 = new long[length];
            for (int i8 = 0; i8 < length; i8++) {
                long[] jArr4 = jArr[i8];
                jArr3[i8] = jArr4.length == 0 ? 0L : jArr4[0];
            }
            AdaptiveTrackSelection.v(arrayList, jArr3);
            ListMultimap listMultimapC = MultimapBuilder.b().a().c();
            int i9 = 0;
            while (i9 < length) {
                long[] jArr5 = jArr[i9];
                if (jArr5.length <= i2) {
                    i3 = i4;
                    j3 = j2;
                } else {
                    int length2 = jArr5.length;
                    double[] dArr = new double[length2];
                    int i10 = i4;
                    i3 = i10;
                    while (true) {
                        long[] jArr6 = jArr[i9];
                        j3 = j2;
                        double dLog = 0.0d;
                        if (i10 >= jArr6.length) {
                            break;
                        }
                        long j5 = jArr6[i10];
                        if (j5 != j3) {
                            dLog = Math.log(j5);
                        }
                        dArr[i10] = dLog;
                        i10++;
                        j2 = j3;
                    }
                    int i11 = length2 - 1;
                    double d = dArr[i11] - dArr[i3];
                    int i12 = i3;
                    while (i12 < i11) {
                        double d2 = dArr[i12];
                        i12++;
                        listMultimapC.put(Double.valueOf(d == 0.0d ? 1.0d : (((d2 + dArr[i12]) * 0.5d) - dArr[i3]) / d), Integer.valueOf(i9));
                        i2 = i2;
                    }
                }
                i9++;
                i4 = i3;
                j2 = j3;
                i2 = i2;
            }
            int i13 = i4;
            int i14 = i2;
            ImmutableList immutableListT = ImmutableList.t(listMultimapC.values());
            for (int i15 = i13; i15 < immutableListT.size(); i15++) {
                int iIntValue = ((Integer) immutableListT.get(i15)).intValue();
                int i16 = iArr2[iIntValue] + 1;
                iArr2[iIntValue] = i16;
                jArr3[iIntValue] = jArr[iIntValue][i16];
                AdaptiveTrackSelection.v(arrayList, jArr3);
            }
            for (int i17 = i13; i17 < definitionArr2.length; i17++) {
                if (arrayList.get(i17) != null) {
                    jArr3[i17] = jArr3[i17] * 2;
                }
            }
            AdaptiveTrackSelection.v(arrayList, jArr3);
            ImmutableList.Builder builder2 = new ImmutableList.Builder();
            for (int i18 = i13; i18 < arrayList.size(); i18++) {
                ImmutableList.Builder builder3 = (ImmutableList.Builder) arrayList.get(i18);
                builder2.e(builder3 == null ? ImmutableList.x() : builder3.j());
            }
            ImmutableList immutableListJ = builder2.j();
            ExoTrackSelection[] exoTrackSelectionArr = new ExoTrackSelection[definitionArr2.length];
            int i19 = i13;
            while (i19 < definitionArr2.length) {
                ExoTrackSelection.Definition definition3 = definitionArr2[i19];
                if (definition3 != null) {
                    int[] iArr3 = definition3.f15721b;
                    if (iArr3.length != 0) {
                        int length3 = iArr3.length;
                        TrackGroup trackGroup = definition3.f15720a;
                        exoTrackSelectionArr[i19] = length3 == i14 ? new FixedTrackSelection(trackGroup, iArr3[i13], definition3.f15722c) : new AdaptiveTrackSelection(trackGroup, iArr3, definition3.f15722c, bandwidthMeter, this.f15676a, this.f15677b, this.f15678c, this.d, this.f15679e, this.f15680f, this.g, (ImmutableList) immutableListJ.get(i19), this.f15681h);
                    }
                }
                i19++;
                definitionArr2 = definitionArr;
                i14 = 1;
            }
            return exoTrackSelectionArr;
        }

        public Factory(int i2, int i3, int i4, float f2) {
            this(i2, i3, i4, 1279, 719, f2, 0.75f, Clock.f14143a);
        }

        public Factory(int i2, int i3, int i4, int i5, int i6, float f2) {
            this(i2, i3, i4, i5, i6, f2, 0.75f, Clock.f14143a);
        }

        public Factory(int i2, int i3, int i4, float f2, float f3, Clock clock) {
            this(i2, i3, i4, 1279, 719, f2, f3, clock);
        }

        public Factory() {
            this(10000, 25000, 25000, 0.7f);
        }
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, BandwidthMeter bandwidthMeter) {
        this(trackGroup, iArr, 0, bandwidthMeter, 10000L, 25000L, 25000L, 1279, 719, 0.7f, 0.75f, ImmutableList.x(), Clock.f14143a);
    }
}
