package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListLayoutInfo;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface LazyListLayoutInfo {
    default long a() {
        IntSize.f11020b.getClass();
        return 0L;
    }

    default int b() {
        return 0;
    }

    default Orientation c() {
        return Orientation.Vertical;
    }

    int d();

    default int e() {
        return 0;
    }

    default int f() {
        return 0;
    }

    List g();

    int h();

    int i();
}
