package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/pager/PagerCacheWindowLogic;", "Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;", "cacheWindow", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;", "state", "Lkotlin/Function0;", "", "itemCount", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function0;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PagerCacheWindowLogic extends CacheWindowLogic {
    public final LazyLayoutCacheWindow p;
    public final LazyLayoutPrefetchState q;
    public final Function0 r;
    public final PagerCacheWindowScope s;

    public PagerCacheWindowLogic(LazyLayoutCacheWindow lazyLayoutCacheWindow, LazyLayoutPrefetchState lazyLayoutPrefetchState, Function0<Integer> function0) {
        super(lazyLayoutCacheWindow, false);
        this.p = lazyLayoutCacheWindow;
        this.q = lazyLayoutPrefetchState;
        this.r = function0;
        this.s = new PagerCacheWindowScope(function0);
    }
}
