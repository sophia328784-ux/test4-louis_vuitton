package androidx.media3.exoplayer.source;

import androidx.media3.exoplayer.LoadingInfo;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CompositeSequenceableLoader implements SequenceableLoader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f15474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f15475c;

    public static final class SequenceableLoaderWithTrackTypes implements SequenceableLoader {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SequenceableLoader f15476b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImmutableList f15477c;

        public SequenceableLoaderWithTrackTypes(SequenceableLoader sequenceableLoader, List<Integer> list) {
            this.f15476b = sequenceableLoader;
            this.f15477c = ImmutableList.t(list);
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader
        public final boolean a(LoadingInfo loadingInfo) {
            return this.f15476b.a(loadingInfo);
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader
        public final long c() {
            return this.f15476b.c();
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader
        public final boolean m() {
            return this.f15476b.m();
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader
        public final long s() {
            return this.f15476b.s();
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader
        public final void v(long j2) {
            this.f15476b.v(j2);
        }
    }

    public CompositeSequenceableLoader(List<? extends SequenceableLoader> list, List<List<Integer>> list2) {
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        Preconditions.g(list.size() == list2.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            builder.e(new SequenceableLoaderWithTrackTypes(list.get(i2), list2.get(i2)));
        }
        this.f15474b = builder.j();
        this.f15475c = -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean a(LoadingInfo loadingInfo) {
        boolean zA;
        boolean z = false;
        do {
            long jC = c();
            if (jC == Long.MIN_VALUE) {
                return z;
            }
            int i2 = 0;
            zA = false;
            while (true) {
                ImmutableList immutableList = this.f15474b;
                if (i2 >= immutableList.size()) {
                    break;
                }
                long jC2 = ((SequenceableLoaderWithTrackTypes) immutableList.get(i2)).f15476b.c();
                boolean z2 = jC2 != Long.MIN_VALUE && jC2 <= loadingInfo.f14703a;
                if (jC2 == jC || z2) {
                    zA |= ((SequenceableLoaderWithTrackTypes) immutableList.get(i2)).f15476b.a(loadingInfo);
                }
                i2++;
            }
            z |= zA;
        } while (zA);
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long c() {
        int i2 = 0;
        long jMin = Long.MAX_VALUE;
        while (true) {
            ImmutableList immutableList = this.f15474b;
            if (i2 >= immutableList.size()) {
                break;
            }
            long jC = ((SequenceableLoaderWithTrackTypes) immutableList.get(i2)).c();
            if (jC != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jC);
            }
            i2++;
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean m() {
        int i2 = 0;
        while (true) {
            ImmutableList immutableList = this.f15474b;
            if (i2 >= immutableList.size()) {
                return false;
            }
            if (((SequenceableLoaderWithTrackTypes) immutableList.get(i2)).m()) {
                return true;
            }
            i2++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long s() {
        int i2 = 0;
        long jMin = Long.MAX_VALUE;
        long jMin2 = Long.MAX_VALUE;
        while (true) {
            ImmutableList immutableList = this.f15474b;
            if (i2 >= immutableList.size()) {
                break;
            }
            SequenceableLoaderWithTrackTypes sequenceableLoaderWithTrackTypes = (SequenceableLoaderWithTrackTypes) immutableList.get(i2);
            long jS = sequenceableLoaderWithTrackTypes.s();
            ImmutableList immutableList2 = sequenceableLoaderWithTrackTypes.f15477c;
            if ((immutableList2.contains(1) || immutableList2.contains(2) || immutableList2.contains(4)) && jS != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jS);
            }
            if (jS != Long.MIN_VALUE) {
                jMin2 = Math.min(jMin2, jS);
            }
            i2++;
        }
        if (jMin != Long.MAX_VALUE) {
            this.f15475c = jMin;
            return jMin;
        }
        if (jMin2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        long j2 = this.f15475c;
        return j2 != -9223372036854775807L ? j2 : jMin2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final void v(long j2) {
        int i2 = 0;
        while (true) {
            ImmutableList immutableList = this.f15474b;
            if (i2 >= immutableList.size()) {
                return;
            }
            ((SequenceableLoaderWithTrackTypes) immutableList.get(i2)).v(j2);
            i2++;
        }
    }

    @Deprecated
    public CompositeSequenceableLoader(SequenceableLoader[] sequenceableLoaderArr) {
        this(ImmutableList.u(sequenceableLoaderArr), Collections.nCopies(sequenceableLoaderArr.length, ImmutableList.A(-1)));
    }
}
