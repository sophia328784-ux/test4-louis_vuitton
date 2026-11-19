package androidx.paging.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.paging.LoadState;
import androidx.paging.LoadStates;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"paging-compose_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public abstract class LazyPagingItemsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LoadStates f19007a;

    static {
        LoadState.NotLoading notLoading = new LoadState.NotLoading(false);
        f19007a = new LoadStates(LoadState.Loading.f18635b, notLoading, notLoading);
    }

    public static final LazyPagingItems a(Flow flow, Composer composer) {
        flow.getClass();
        composer.w(388053246);
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f71840b;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        composer.w(1046463091);
        boolean zK = composer.K(flow);
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (zK || objX == obj) {
            objX = new LazyPagingItems(flow);
            composer.q(objX);
        }
        LazyPagingItems lazyPagingItems = (LazyPagingItems) objX;
        composer.J();
        composer.w(1046463169);
        boolean zY = composer.y(emptyCoroutineContext) | composer.y(lazyPagingItems);
        Object objX2 = composer.x();
        if (zY || objX2 == obj) {
            objX2 = new LazyPagingItemsKt$collectAsLazyPagingItems$1$1(emptyCoroutineContext, lazyPagingItems, null);
            composer.q(objX2);
        }
        composer.J();
        EffectsKt.e(composer, lazyPagingItems, (Function2) objX2);
        composer.w(1046463438);
        boolean zY2 = composer.y(emptyCoroutineContext) | composer.y(lazyPagingItems);
        Object objX3 = composer.x();
        if (zY2 || objX3 == obj) {
            objX3 = new LazyPagingItemsKt$collectAsLazyPagingItems$2$1(emptyCoroutineContext, lazyPagingItems, null);
            composer.q(objX3);
        }
        composer.J();
        EffectsKt.e(composer, lazyPagingItems, (Function2) objX3);
        composer.J();
        return lazyPagingItems;
    }
}
