package androidx.media3.exoplayer.source;

import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.ForwardingTrackSelection;
import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import defpackage.md;
import defpackage.uh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;

/* JADX INFO: loaded from: classes.dex */
final class MergingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaPeriod[] f15526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean[] f15527c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CompositeSequenceableLoaderFactory f15528e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public MediaPeriod.Callback f15530h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TrackGroupArray f15531i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public SequenceableLoader f15533k;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f15529f = new ArrayList();
    public final HashMap g = new HashMap();
    public final IdentityHashMap d = new IdentityHashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MediaPeriod[] f15532j = new MediaPeriod[0];

    public static final class MergingMediaPeriodTrackSelection extends ForwardingTrackSelection {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackGroup f15534b;

        public MergingMediaPeriodTrackSelection(ExoTrackSelection exoTrackSelection, TrackGroup trackGroup) {
            super(exoTrackSelection);
            this.f15534b = trackGroup;
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection, androidx.media3.exoplayer.trackselection.TrackSelection
        public final Format e(int i2) {
            return this.f15534b.d[this.f15724a.f(i2)];
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection
        public final boolean equals(Object obj) {
            if (super.equals(obj) && (obj instanceof MergingMediaPeriodTrackSelection)) {
                return this.f15534b.equals(((MergingMediaPeriodTrackSelection) obj).f15534b);
            }
            return false;
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection
        public final int hashCode() {
            return this.f15534b.hashCode() + (this.f15724a.hashCode() * 31);
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection, androidx.media3.exoplayer.trackselection.TrackSelection
        public final TrackGroup m() {
            return this.f15534b;
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public final Format s() {
            return this.f15534b.d[this.f15724a.r()];
        }
    }

    public MergingMediaPeriod(CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, long[] jArr, MediaPeriod... mediaPeriodArr) {
        this.f15528e = compositeSequenceableLoaderFactory;
        this.f15526b = mediaPeriodArr;
        this.f15533k = compositeSequenceableLoaderFactory.empty();
        this.f15527c = new boolean[mediaPeriodArr.length];
        for (int i2 = 0; i2 < mediaPeriodArr.length; i2++) {
            long j2 = jArr[i2];
            if (j2 != 0) {
                this.f15527c[i2] = true;
                this.f15526b[i2] = new TimeOffsetMediaPeriod(mediaPeriodArr[i2], j2);
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean a(LoadingInfo loadingInfo) {
        ArrayList arrayList = this.f15529f;
        if (arrayList.isEmpty()) {
            return this.f15533k.a(loadingInfo);
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((MediaPeriod) arrayList.get(i2)).a(loadingInfo);
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long c() {
        return this.f15533k.c();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long d(long j2, SeekParameters seekParameters) {
        MediaPeriod[] mediaPeriodArr = this.f15532j;
        return (mediaPeriodArr.length > 0 ? mediaPeriodArr[0] : this.f15526b[0]).d(j2, seekParameters);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long e(long j2) {
        long jE = this.f15532j[0].e(j2);
        int i2 = 1;
        while (true) {
            MediaPeriod[] mediaPeriodArr = this.f15532j;
            if (i2 >= mediaPeriodArr.length) {
                return jE;
            }
            if (mediaPeriodArr[i2].e(jE) != jE) {
                md.k("Unexpected child seekToUs result.");
                return 0L;
            }
            i2++;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long f(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j2) {
        IdentityHashMap identityHashMap;
        int[] iArr = new int[exoTrackSelectionArr.length];
        int[] iArr2 = new int[exoTrackSelectionArr.length];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int length = exoTrackSelectionArr.length;
            identityHashMap = this.d;
            if (i3 >= length) {
                break;
            }
            SampleStream sampleStream = sampleStreamArr[i3];
            Integer num = sampleStream == null ? null : (Integer) identityHashMap.get(sampleStream);
            iArr[i3] = num == null ? -1 : num.intValue();
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i3];
            if (exoTrackSelection != null) {
                String str = exoTrackSelection.m().f13978b;
                iArr2[i3] = Integer.parseInt(str.substring(0, str.indexOf(":")));
            } else {
                iArr2[i3] = -1;
            }
            i3++;
        }
        identityHashMap.clear();
        int length2 = exoTrackSelectionArr.length;
        SampleStream[] sampleStreamArr2 = new SampleStream[length2];
        SampleStream[] sampleStreamArr3 = new SampleStream[exoTrackSelectionArr.length];
        ExoTrackSelection[] exoTrackSelectionArr2 = new ExoTrackSelection[exoTrackSelectionArr.length];
        MediaPeriod[] mediaPeriodArr = this.f15526b;
        ArrayList arrayList = new ArrayList(mediaPeriodArr.length);
        long j3 = j2;
        int i4 = 0;
        while (i4 < mediaPeriodArr.length) {
            int i5 = i2;
            while (i5 < exoTrackSelectionArr.length) {
                sampleStreamArr3[i5] = iArr[i5] == i4 ? sampleStreamArr[i5] : null;
                if (iArr2[i5] == i4) {
                    ExoTrackSelection exoTrackSelection2 = exoTrackSelectionArr[i5];
                    exoTrackSelection2.getClass();
                    TrackGroup trackGroup = (TrackGroup) this.g.get(exoTrackSelection2.m());
                    trackGroup.getClass();
                    exoTrackSelectionArr2[i5] = new MergingMediaPeriodTrackSelection(exoTrackSelection2, trackGroup);
                } else {
                    exoTrackSelectionArr2[i5] = null;
                }
                i5++;
                iArr = iArr;
            }
            int[] iArr3 = iArr;
            MediaPeriod[] mediaPeriodArr2 = mediaPeriodArr;
            int i6 = i4;
            long jF = mediaPeriodArr2[i4].f(exoTrackSelectionArr2, zArr, sampleStreamArr3, zArr2, j3);
            if (i6 == 0) {
                j3 = jF;
            } else if (jF != j3) {
                md.k("Children enabled at different positions.");
                return 0L;
            }
            boolean z = false;
            for (int i7 = 0; i7 < exoTrackSelectionArr.length; i7++) {
                if (iArr2[i7] == i6) {
                    SampleStream sampleStream2 = sampleStreamArr3[i7];
                    sampleStream2.getClass();
                    sampleStreamArr2[i7] = sampleStreamArr3[i7];
                    identityHashMap.put(sampleStream2, Integer.valueOf(i6));
                    z = true;
                } else if (iArr3[i7] == i6) {
                    Preconditions.q(sampleStreamArr3[i7] == null);
                }
            }
            if (z) {
                arrayList.add(mediaPeriodArr2[i6]);
            }
            i4 = i6 + 1;
            mediaPeriodArr = mediaPeriodArr2;
            iArr = iArr3;
            i2 = 0;
        }
        int i8 = i2;
        System.arraycopy(sampleStreamArr2, i8, sampleStreamArr, i8, length2);
        this.f15532j = (MediaPeriod[]) arrayList.toArray(new MediaPeriod[i8]);
        this.f15533k = this.f15528e.a(arrayList, Lists.d(new uh(10), arrayList));
        return j3;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long g() {
        long j2;
        MediaPeriod mediaPeriod;
        MediaPeriod[] mediaPeriodArr = this.f15532j;
        int length = mediaPeriodArr.length;
        long j3 = -9223372036854775807L;
        long j4 = -9223372036854775807L;
        int i2 = 0;
        while (i2 < length) {
            MediaPeriod mediaPeriod2 = mediaPeriodArr[i2];
            long jG = mediaPeriod2.g();
            if (jG == j3) {
                j2 = j3;
                if (j4 != j2 && mediaPeriod2.e(j4) != j4) {
                    md.k("Unexpected child seekToUs result.");
                    return 0L;
                }
            } else if (j4 == j3) {
                MediaPeriod[] mediaPeriodArr2 = this.f15532j;
                int length2 = mediaPeriodArr2.length;
                int i3 = 0;
                while (true) {
                    j2 = j3;
                    if (i3 >= length2 || (mediaPeriod = mediaPeriodArr2[i3]) == mediaPeriod2) {
                        break;
                    }
                    if (mediaPeriod.e(jG) != jG) {
                        md.k("Unexpected child seekToUs result.");
                        return 0L;
                    }
                    i3++;
                    j3 = j2;
                }
                j4 = jG;
            } else {
                j2 = j3;
                if (jG != j4) {
                    md.k("Conflicting discontinuities.");
                    return 0L;
                }
            }
            i2++;
            j3 = j2;
        }
        return j4;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long i(long j2) {
        boolean z = true;
        for (MediaPeriod mediaPeriod : this.f15526b) {
            z &= mediaPeriod.i(j2) == j2;
        }
        if (z) {
            return j2;
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public final void j(MediaPeriod mediaPeriod) {
        ArrayList arrayList = this.f15529f;
        arrayList.remove(mediaPeriod);
        if (arrayList.isEmpty()) {
            MediaPeriod[] mediaPeriodArr = this.f15526b;
            int i2 = 0;
            for (MediaPeriod mediaPeriod2 : mediaPeriodArr) {
                i2 += mediaPeriod2.p().f15636a;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i2];
            int i3 = 0;
            for (int i4 = 0; i4 < mediaPeriodArr.length; i4++) {
                TrackGroupArray trackGroupArrayP = mediaPeriodArr[i4].p();
                int i5 = trackGroupArrayP.f15636a;
                int i6 = 0;
                while (i6 < i5) {
                    TrackGroup trackGroupA = trackGroupArrayP.a(i6);
                    Format[] formatArr = new Format[trackGroupA.f13977a];
                    for (int i7 = 0; i7 < trackGroupA.f13977a; i7++) {
                        Format format = trackGroupA.d[i7];
                        Format.Builder builderA = format.a();
                        String str = format.m;
                        StringBuilder sb = new StringBuilder();
                        sb.append(i4);
                        sb.append(":");
                        String str2 = format.f13755a;
                        if (str2 == null) {
                            str2 = "";
                        }
                        sb.append(str2);
                        builderA.f13764a = sb.toString();
                        if (str != null) {
                            builderA.l = i4 + ":" + str;
                        }
                        formatArr[i7] = new Format(builderA);
                    }
                    TrackGroup trackGroup = new TrackGroup(i4 + ":" + trackGroupA.f13978b, formatArr);
                    this.g.put(trackGroup, trackGroupA);
                    trackGroupArr[i3] = trackGroup;
                    i6++;
                    i3++;
                }
            }
            this.f15531i = new TrackGroupArray(trackGroupArr);
            MediaPeriod.Callback callback = this.f15530h;
            callback.getClass();
            callback.j(this);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void k() {
        for (MediaPeriod mediaPeriod : this.f15526b) {
            mediaPeriod.k();
        }
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public final void l(SequenceableLoader sequenceableLoader) {
        MediaPeriod.Callback callback = this.f15530h;
        callback.getClass();
        callback.l(this);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean m() {
        return this.f15533k.m();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void o(MediaPeriod.Callback callback, long j2) {
        this.f15530h = callback;
        ArrayList arrayList = this.f15529f;
        MediaPeriod[] mediaPeriodArr = this.f15526b;
        Collections.addAll(arrayList, mediaPeriodArr);
        for (MediaPeriod mediaPeriod : mediaPeriodArr) {
            mediaPeriod.o(this, j2);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final TrackGroupArray p() {
        TrackGroupArray trackGroupArray = this.f15531i;
        trackGroupArray.getClass();
        return trackGroupArray;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long s() {
        return this.f15533k.s();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void u(long j2, boolean z) {
        for (MediaPeriod mediaPeriod : this.f15532j) {
            mediaPeriod.u(j2, z);
        }
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final void v(long j2) {
        this.f15533k.v(j2);
    }
}
