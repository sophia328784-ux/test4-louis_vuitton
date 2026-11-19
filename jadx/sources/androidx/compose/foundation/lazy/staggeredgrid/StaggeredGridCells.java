package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;", "", "Fixed", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface StaggeredGridCells {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$Fixed;", "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;", "", com.batch.android.s.b.a.f24018f, "<init>", "(I)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Fixed implements StaggeredGridCells {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5681a;

        public Fixed(int i2) {
            this.f5681a = i2;
            if (i2 > 0) {
                return;
            }
            InlineClassHelperKt.a("grid with no rows/columns");
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Fixed) {
                return this.f5681a == ((Fixed) obj).f5681a;
            }
            return false;
        }

        public final int hashCode() {
            return -this.f5681a;
        }
    }
}
