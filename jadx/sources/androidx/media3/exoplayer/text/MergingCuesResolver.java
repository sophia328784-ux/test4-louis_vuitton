package androidx.media3.exoplayer.text;

import androidx.media3.extractor.text.CuesWithTiming;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class MergingCuesResolver implements CuesResolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Ordering f15664b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f15665a = new ArrayList();

    static {
        final int i2 = 0;
        final int i3 = 1;
        f15664b = Ordering.c().d(new Function() { // from class: androidx.media3.exoplayer.text.a
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                CuesWithTiming cuesWithTiming = (CuesWithTiming) obj;
                switch (i2) {
                    case 0:
                        Ordering ordering = MergingCuesResolver.f15664b;
                        return Long.valueOf(cuesWithTiming.f16665b);
                    default:
                        Ordering ordering2 = MergingCuesResolver.f15664b;
                        return Long.valueOf(cuesWithTiming.f16666c);
                }
            }
        }).a(Ordering.c().e().d(new Function() { // from class: androidx.media3.exoplayer.text.a
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                CuesWithTiming cuesWithTiming = (CuesWithTiming) obj;
                switch (i3) {
                    case 0:
                        Ordering ordering = MergingCuesResolver.f15664b;
                        return Long.valueOf(cuesWithTiming.f16665b);
                    default:
                        Ordering ordering2 = MergingCuesResolver.f15664b;
                        return Long.valueOf(cuesWithTiming.f16666c);
                }
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final ImmutableList a(long j2) {
        ArrayList arrayList = this.f15665a;
        if (!arrayList.isEmpty()) {
            if (j2 >= ((CuesWithTiming) arrayList.get(0)).f16665b) {
                ArrayList arrayList2 = new ArrayList();
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    CuesWithTiming cuesWithTiming = (CuesWithTiming) arrayList.get(i2);
                    if (j2 >= cuesWithTiming.f16665b && j2 < cuesWithTiming.d) {
                        arrayList2.add(cuesWithTiming);
                    }
                    if (j2 < cuesWithTiming.f16665b) {
                        break;
                    }
                }
                ImmutableList immutableListG = ImmutableList.G(f15664b, arrayList2);
                ImmutableList.Builder builder = new ImmutableList.Builder();
                for (int i3 = 0; i3 < immutableListG.size(); i3++) {
                    builder.g(((CuesWithTiming) immutableListG.get(i3)).f16664a);
                }
                return builder.j();
            }
        }
        return ImmutableList.x();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final boolean b(CuesWithTiming cuesWithTiming, long j2) {
        long j3 = cuesWithTiming.f16665b;
        Preconditions.g(j3 != -9223372036854775807L);
        Preconditions.g(cuesWithTiming.f16666c != -9223372036854775807L);
        boolean z = j3 <= j2 && j2 < cuesWithTiming.d;
        ArrayList arrayList = this.f15665a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (j3 >= ((CuesWithTiming) arrayList.get(size)).f16665b) {
                arrayList.add(size + 1, cuesWithTiming);
                return z;
            }
        }
        arrayList.add(0, cuesWithTiming);
        return z;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final long c(long j2) {
        ArrayList arrayList = this.f15665a;
        if (arrayList.isEmpty()) {
            return -9223372036854775807L;
        }
        if (j2 < ((CuesWithTiming) arrayList.get(0)).f16665b) {
            return -9223372036854775807L;
        }
        long jMax = ((CuesWithTiming) arrayList.get(0)).f16665b;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            long j3 = ((CuesWithTiming) arrayList.get(i2)).f16665b;
            long j4 = ((CuesWithTiming) arrayList.get(i2)).d;
            if (j4 > j2) {
                if (j3 > j2) {
                    break;
                }
                jMax = Math.max(jMax, j3);
            } else {
                jMax = Math.max(jMax, j4);
            }
        }
        return jMax;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final void clear() {
        this.f15665a.clear();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final long d(long j2) {
        int i2 = 0;
        long jMin = -9223372036854775807L;
        while (true) {
            ArrayList arrayList = this.f15665a;
            if (i2 >= arrayList.size()) {
                break;
            }
            long j3 = ((CuesWithTiming) arrayList.get(i2)).f16665b;
            long j4 = ((CuesWithTiming) arrayList.get(i2)).d;
            if (j2 < j3) {
                if (jMin != -9223372036854775807L) {
                    jMin = Math.min(jMin, j3);
                    break;
                }
                jMin = j3;
                break;
            }
            if (j2 < j4) {
                jMin = jMin == -9223372036854775807L ? j4 : Math.min(jMin, j4);
            }
            i2++;
        }
        if (jMin != -9223372036854775807L) {
            return jMin;
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final void e(long j2) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f15665a;
            if (i2 >= arrayList.size()) {
                return;
            }
            long j3 = ((CuesWithTiming) arrayList.get(i2)).f16665b;
            if (j2 > j3 && j2 > ((CuesWithTiming) arrayList.get(i2)).d) {
                arrayList.remove(i2);
                i2--;
            } else if (j2 < j3) {
                return;
            }
            i2++;
        }
    }
}
