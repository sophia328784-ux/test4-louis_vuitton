package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/grid/GridCells;", "", "Fixed", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface GridCells {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;", "Landroidx/compose/foundation/lazy/grid/GridCells;", "", com.batch.android.s.b.a.f24018f, "<init>", "(I)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Fixed implements GridCells {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5270a;

        public Fixed(int i2) {
            this.f5270a = i2;
            if (i2 > 0) {
                return;
            }
            InlineClassHelperKt.a("Provided count should be larger than zero");
        }

        public final ArrayList a(int i2, int i3) {
            int i4 = this.f5270a;
            int i5 = i2 - ((i4 - 1) * i3);
            int i6 = i5 / i4;
            int i7 = i5 % i4;
            ArrayList arrayList = new ArrayList(i4);
            int i8 = 0;
            while (i8 < i4) {
                arrayList.add(Integer.valueOf((i8 < i7 ? 1 : 0) + i6));
                i8++;
            }
            return arrayList;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Fixed) {
                return this.f5270a == ((Fixed) obj).f5270a;
            }
            return false;
        }

        public final int hashCode() {
            return -this.f5270a;
        }
    }
}
