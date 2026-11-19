package androidx.media3.exoplayer.text;

import androidx.media3.extractor.text.CuesWithTiming;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class ReplacingCuesResolver implements CuesResolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f15666a = new ArrayList();

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final ImmutableList a(long j2) {
        int iF = f(j2);
        if (iF == 0) {
            return ImmutableList.x();
        }
        CuesWithTiming cuesWithTiming = (CuesWithTiming) this.f15666a.get(iF - 1);
        long j3 = cuesWithTiming.d;
        return (j3 == -9223372036854775807L || j2 < j3) ? cuesWithTiming.f16664a : ImmutableList.x();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0023  */
    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final boolean b(CuesWithTiming cuesWithTiming, long j2) {
        boolean z;
        long j3 = cuesWithTiming.f16665b;
        Preconditions.g(j3 != -9223372036854775807L);
        if (j3 <= j2) {
            long j4 = cuesWithTiming.d;
            if (j4 == -9223372036854775807L || j2 < j4) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        ArrayList arrayList = this.f15666a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (j3 >= ((CuesWithTiming) arrayList.get(size)).f16665b) {
                arrayList.add(size + 1, cuesWithTiming);
                return z;
            }
            if (((CuesWithTiming) arrayList.get(size)).f16665b <= j2) {
                z = false;
            }
        }
        arrayList.add(0, cuesWithTiming);
        return z;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final long c(long j2) {
        ArrayList arrayList = this.f15666a;
        if (arrayList.isEmpty() || j2 < ((CuesWithTiming) arrayList.get(0)).f16665b) {
            return -9223372036854775807L;
        }
        for (int i2 = 1; i2 < arrayList.size(); i2++) {
            long j3 = ((CuesWithTiming) arrayList.get(i2)).f16665b;
            if (j2 == j3) {
                return j3;
            }
            if (j2 < j3) {
                CuesWithTiming cuesWithTiming = (CuesWithTiming) arrayList.get(i2 - 1);
                long j4 = cuesWithTiming.d;
                return (j4 == -9223372036854775807L || j4 > j2) ? cuesWithTiming.f16665b : j4;
            }
        }
        CuesWithTiming cuesWithTiming2 = (CuesWithTiming) Iterables.b(arrayList);
        long j5 = cuesWithTiming2.d;
        return (j5 == -9223372036854775807L || j2 < j5) ? cuesWithTiming2.f16665b : j5;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final void clear() {
        this.f15666a.clear();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final long d(long j2) {
        ArrayList arrayList = this.f15666a;
        if (arrayList.isEmpty()) {
            return Long.MIN_VALUE;
        }
        if (j2 < ((CuesWithTiming) arrayList.get(0)).f16665b) {
            return ((CuesWithTiming) arrayList.get(0)).f16665b;
        }
        for (int i2 = 1; i2 < arrayList.size(); i2++) {
            CuesWithTiming cuesWithTiming = (CuesWithTiming) arrayList.get(i2);
            long j3 = cuesWithTiming.f16665b;
            long j4 = cuesWithTiming.f16665b;
            if (j2 < j3) {
                long j5 = ((CuesWithTiming) arrayList.get(i2 - 1)).d;
                return (j5 == -9223372036854775807L || j5 <= j2 || j5 >= j4) ? j4 : j5;
            }
        }
        long j6 = ((CuesWithTiming) Iterables.b(arrayList)).d;
        if (j6 == -9223372036854775807L || j2 >= j6) {
            return Long.MIN_VALUE;
        }
        return j6;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final void e(long j2) {
        int iF = f(j2);
        if (iF == 0) {
            return;
        }
        ArrayList arrayList = this.f15666a;
        long j3 = ((CuesWithTiming) arrayList.get(iF - 1)).d;
        if (j3 == -9223372036854775807L || j3 >= j2) {
            iF--;
        }
        arrayList.subList(0, iF).clear();
    }

    public final int f(long j2) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f15666a;
            if (i2 >= arrayList.size()) {
                return arrayList.size();
            }
            if (j2 < ((CuesWithTiming) arrayList.get(i2)).f16665b) {
                return i2;
            }
            i2++;
        }
    }
}
