package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B&\u0012\u001d\u0010\u0007\u001a\u0019\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0002¢\u0006\u0002\b\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/lazy/grid/GridSlotCache;", "Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/Density;", "Landroidx/compose/ui/unit/Constraints;", "Landroidx/compose/foundation/lazy/grid/LazyGridSlots;", "Lkotlin/ExtensionFunctionType;", "calculation", "<init>", "(Lkotlin/jvm/functions/Function2;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class GridSlotCache implements LazyGridSlotsProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function2 f5272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f5273b = ConstraintsKt.b(0, 0, 0, 0, 15);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f5274c;
    public LazyGridSlots d;

    public GridSlotCache(Function2<? super Density, ? super Constraints, LazyGridSlots> function2) {
        this.f5272a = function2;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridSlotsProvider
    public final LazyGridSlots a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j2) {
        SubcomposeMeasureScope subcomposeMeasureScope = lazyLayoutMeasureScopeImpl.f5487c;
        if (this.d != null && Constraints.b(this.f5273b, j2) && this.f5274c == subcomposeMeasureScope.getF11002b()) {
            LazyGridSlots lazyGridSlots = this.d;
            lazyGridSlots.getClass();
            return lazyGridSlots;
        }
        this.f5273b = j2;
        this.f5274c = subcomposeMeasureScope.getF11002b();
        LazyGridSlots lazyGridSlots2 = (LazyGridSlots) this.f5272a.invoke(lazyLayoutMeasureScopeImpl, new Constraints(j2));
        this.d = lazyGridSlots2;
        return lazyGridSlots2;
    }
}
