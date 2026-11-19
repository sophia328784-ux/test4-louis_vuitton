package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.crypto.CryptoServicesPermission;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;", "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;", "Landroidx/compose/ui/unit/Constraints;", CryptoServicesPermission.CONSTRAINTS, "", "isVertical", "Landroidx/compose/foundation/lazy/LazyListItemProvider;", "itemProvider", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "measureScope", "<init>", "(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LazyListMeasuredItemProvider extends LazyLayoutMeasuredItemProvider<LazyListMeasuredItem> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyListItemProvider f5221b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyLayoutMeasureScope f5222c;
    public final long d;

    public LazyListMeasuredItemProvider(long j2, boolean z, LazyListItemProvider lazyListItemProvider, LazyLayoutMeasureScope lazyLayoutMeasureScope, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5221b = lazyListItemProvider;
        this.f5222c = lazyLayoutMeasureScope;
        this.d = ConstraintsKt.b(0, z ? Constraints.h(j2) : Integer.MAX_VALUE, 0, z ? Integer.MAX_VALUE : Constraints.g(j2), 5);
    }

    public static LazyListMeasuredItem d(LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1, int i2) {
        long j2 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.d;
        LazyListItemProvider lazyListItemProvider = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.f5221b;
        return lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.c(i2, lazyListItemProvider.d(i2), lazyListItemProvider.f(i2), lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.b(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.f5222c, i2, j2), j2);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider
    public final LazyLayoutMeasuredItem a(int i2, int i3, int i4, long j2) {
        LazyListItemProvider lazyListItemProvider = this.f5221b;
        return c(i2, lazyListItemProvider.d(i2), lazyListItemProvider.f(i2), b(this.f5222c, i2, j2), j2);
    }

    public abstract LazyListMeasuredItem c(int i2, Object obj, Object obj2, List list, long j2);
}
