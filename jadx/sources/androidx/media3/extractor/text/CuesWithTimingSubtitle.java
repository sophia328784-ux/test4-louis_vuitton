package androidx.media3.extractor.text;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class CuesWithTimingSubtitle implements Subtitle {
    public static final Ordering d = Ordering.c().d(new a());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f16667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f16668c;

    /* JADX WARN: Code duplicated, block: B:43:0x00f9  */
    /* JADX WARN: Multi-variable type inference failed */
    public CuesWithTimingSubtitle(List<CuesWithTiming> list) {
        int i2 = 0;
        if (list.size() == 1) {
            Iterator<T> it = list.iterator();
            Object next = it.next();
            if (it.hasNext()) {
                StringBuilder sb = new StringBuilder("expected one element but was: <");
                sb.append(next);
                while (i2 < 4 && it.hasNext()) {
                    sb.append(", ");
                    sb.append(it.next());
                    i2++;
                }
                if (it.hasNext()) {
                    sb.append(", ...");
                }
                sb.append('>');
                throw new IllegalArgumentException(sb.toString());
            }
            CuesWithTiming cuesWithTiming = (CuesWithTiming) next;
            long j2 = cuesWithTiming.f16665b;
            long j3 = cuesWithTiming.f16666c;
            long j4 = j2 == -9223372036854775807L ? 0L : j2;
            ImmutableList immutableList = cuesWithTiming.f16664a;
            if (j3 == -9223372036854775807L) {
                this.f16667b = ImmutableList.A(immutableList);
                this.f16668c = new long[]{j4};
                return;
            } else {
                this.f16667b = ImmutableList.D(immutableList, ImmutableList.x());
                this.f16668c = new long[]{j4, j3 + j4};
                return;
            }
        }
        long[] jArr = new long[list.size() * 2];
        this.f16668c = jArr;
        Arrays.fill(jArr, Long.MAX_VALUE);
        ArrayList arrayList = new ArrayList();
        ImmutableList immutableListG = ImmutableList.G(d, list);
        int i3 = 0;
        while (i2 < immutableListG.size()) {
            CuesWithTiming cuesWithTiming2 = (CuesWithTiming) immutableListG.get(i2);
            long j5 = cuesWithTiming2.f16665b;
            long j6 = cuesWithTiming2.f16666c;
            ImmutableList immutableList2 = cuesWithTiming2.f16664a;
            j5 = j5 == -9223372036854775807L ? 0L : j5;
            long j7 = j5 + j6;
            if (i3 != 0) {
                int i4 = i3 - 1;
                long j8 = this.f16668c[i4];
                if (j8 < j5) {
                    this.f16668c[i3] = j5;
                    arrayList.add(immutableList2);
                    i3++;
                } else if (j8 == j5 && ((ImmutableList) arrayList.get(i4)).isEmpty()) {
                    arrayList.set(i4, immutableList2);
                } else {
                    Log.g("Truncating unsupported overlapping cues.");
                    this.f16668c[i4] = j5;
                    arrayList.set(i4, immutableList2);
                }
            } else {
                this.f16668c[i3] = j5;
                arrayList.add(immutableList2);
                i3++;
            }
            if (j6 != -9223372036854775807L) {
                this.f16668c[i3] = j7;
                arrayList.add(ImmutableList.x());
                i3++;
            }
            i2++;
        }
        this.f16667b = ImmutableList.t(arrayList);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int a(long j2) {
        int iB = Util.b(this.f16668c, j2, false);
        if (iB < this.f16667b.size()) {
            return iB;
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.extractor.text.Subtitle
    public final List b(long j2) {
        int iF = Util.f(this.f16668c, j2, false);
        return iF == -1 ? ImmutableList.x() : (ImmutableList) this.f16667b.get(iF);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final long c(int i2) {
        Preconditions.g(i2 < this.f16667b.size());
        return this.f16668c[i2];
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int d() {
        return this.f16667b.size();
    }
}
