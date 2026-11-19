package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider;
import androidx.compose.ui.unit.Constraints;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b!\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;", "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;", "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;", "itemProvider", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "measureScope", "", "defaultMainAxisSpacing", "<init>", "(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;I)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LazyGridMeasuredItemProvider extends LazyLayoutMeasuredItemProvider<LazyGridMeasuredItem> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyGridItemProvider f5320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyLayoutMeasureScope f5321c;
    public final int d;

    public LazyGridMeasuredItemProvider(LazyGridItemProvider lazyGridItemProvider, LazyLayoutMeasureScope lazyLayoutMeasureScope, int i2) {
        this.f5320b = lazyGridItemProvider;
        this.f5321c = lazyLayoutMeasureScope;
        this.d = i2;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider
    public final LazyLayoutMeasuredItem a(int i2, int i3, int i4, long j2) {
        return d(i2, i3, i4, this.d, j2);
    }

    public abstract LazyGridMeasuredItem c(int i2, Object obj, Object obj2, int i3, int i4, List list, long j2, int i5, int i6);

    public final LazyGridMeasuredItem d(int i2, int i3, int i4, int i5, long j2) {
        int i6;
        LazyGridItemProvider lazyGridItemProvider = this.f5320b;
        Object objD = lazyGridItemProvider.d(i2);
        Object objF = lazyGridItemProvider.f(i2);
        List listB = b(this.f5321c, i2, j2);
        if (Constraints.f(j2)) {
            i6 = Constraints.j(j2);
        } else {
            if (!Constraints.e(j2)) {
                InlineClassHelperKt.a("does not have fixed height");
            }
            i6 = Constraints.i(j2);
        }
        return c(i2, objD, objF, i6, i5, listB, j2, i3, i4);
    }
}
