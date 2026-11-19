package androidx.compose.foundation.lazy;

import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;", "Landroidx/compose/foundation/lazy/LazyListItemProvider;", "Landroidx/compose/foundation/lazy/LazyListState;", "state", "Landroidx/compose/foundation/lazy/LazyListIntervalContent;", "intervalContent", "Landroidx/compose/foundation/lazy/LazyItemScopeImpl;", "itemScope", "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;", "keyIndexMap", "<init>", "(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class LazyListItemProviderImpl implements LazyListItemProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyListState f5185a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyListIntervalContent f5186b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyItemScopeImpl f5187c;
    public final LazyLayoutKeyIndexMap d;

    public LazyListItemProviderImpl(LazyListState lazyListState, LazyListIntervalContent lazyListIntervalContent, LazyItemScopeImpl lazyItemScopeImpl, LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap) {
        this.f5185a = lazyListState;
        this.f5186b = lazyListIntervalContent;
        this.f5187c = lazyItemScopeImpl;
        this.d = lazyLayoutKeyIndexMap;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemProvider
    /* JADX INFO: renamed from: a, reason: from getter */
    public final LazyLayoutKeyIndexMap getD() {
        return this.d;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final int b() {
        return this.f5186b.getF5183a().f5539b;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final int c(Object obj) {
        return this.d.c(obj);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final Object d(int i2) {
        Object objD = this.d.d(i2);
        return objD == null ? this.f5186b.n(i2) : objD;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemProvider
    public final MutableIntList e() {
        MutableIntList mutableIntList = this.f5186b.f5184b;
        return mutableIntList != null ? mutableIntList : IntListKt.f3257a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazyListItemProviderImpl)) {
            return false;
        }
        return Intrinsics.c(this.f5186b, ((LazyListItemProviderImpl) obj).f5186b);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final Object f(int i2) {
        return this.f5186b.l(i2);
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemProvider
    /* JADX INFO: renamed from: g, reason: from getter */
    public final LazyItemScopeImpl getF5187c() {
        return this.f5187c;
    }

    public final int hashCode() {
        return this.f5186b.hashCode();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final void i(final int i2, Object obj, Composer composer, final int i3) {
        final int i4;
        final Object obj2;
        GapComposer gapComposerH = composer.h(-462424778);
        int i5 = (gapComposerH.d(i2) ? 4 : 2) | i3 | (gapComposerH.y(obj) ? 32 : 16) | (gapComposerH.K(this) ? 256 : 128);
        if (gapComposerH.p(i5 & 1, (i5 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            i4 = i2;
            obj2 = obj;
            LazyLayoutPinnableItemKt.a(obj2, i4, this.f5185a.s, ComposableLambdaKt.b(-824725566, new Function2() { // from class: androidx.compose.foundation.lazy.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    Composer composer2 = (Composer) obj3;
                    int iIntValue = ((Integer) obj4).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        LazyListItemProviderImpl lazyListItemProviderImpl = this.f5259b;
                        MutableIntervalList mutableIntervalList = lazyListItemProviderImpl.f5186b.f5183a;
                        int i6 = i2;
                        IntervalList.Interval interval = mutableIntervalList.get(i6);
                        ((LazyListInterval) interval.f5407c).f5182c.g(lazyListItemProviderImpl.f5187c, Integer.valueOf(i6 - interval.f5405a), composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, ((i5 >> 3) & 14) | 3072 | ((i5 << 3) & 112));
        } else {
            i4 = i2;
            obj2 = obj;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(i4, obj2, i3) { // from class: androidx.compose.foundation.lazy.b

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ int f5262c;
                public final /* synthetic */ Object d;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    this.f5261b.i(this.f5262c, this.d, (Composer) obj3, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
