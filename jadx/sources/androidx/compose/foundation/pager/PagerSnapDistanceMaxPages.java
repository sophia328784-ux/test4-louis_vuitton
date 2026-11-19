package androidx.compose.foundation.pager;

import kotlin.Metadata;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;", "Landroidx/compose/foundation/pager/PagerSnapDistance;", "", "pagesLimit", "<init>", "(I)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PagerSnapDistanceMaxPages implements PagerSnapDistance {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5756a;

    public PagerSnapDistanceMaxPages(int i2) {
        this.f5756a = i2;
    }

    @Override // androidx.compose.foundation.pager.PagerSnapDistance
    public final int a(int i2, int i3) {
        long j2 = i2;
        long j3 = this.f5756a;
        long j4 = j2 - j3;
        if (j4 < 0) {
            j4 = 0;
        }
        int i4 = (int) j4;
        long j5 = j2 + j3;
        if (j5 > 2147483647L) {
            j5 = 2147483647L;
        }
        return RangesKt.d(i3, i4, (int) j5);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof PagerSnapDistanceMaxPages) {
            if (this.f5756a == ((PagerSnapDistanceMaxPages) obj).f5756a) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f5756a);
    }
}
