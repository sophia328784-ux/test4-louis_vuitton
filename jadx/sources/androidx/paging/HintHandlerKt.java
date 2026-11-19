package androidx.paging;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"paging-common_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public abstract class HintHandlerKt {
    public static final boolean a(ViewportHint viewportHint, ViewportHint viewportHint2, LoadType loadType) {
        viewportHint.getClass();
        loadType.getClass();
        if (viewportHint2 == null) {
            return true;
        }
        if ((viewportHint2 instanceof ViewportHint.Initial) && (viewportHint instanceof ViewportHint.Access)) {
            return true;
        }
        if ((viewportHint instanceof ViewportHint.Initial) && (viewportHint2 instanceof ViewportHint.Access)) {
            return false;
        }
        return (viewportHint.f18996c == viewportHint2.f18996c && viewportHint.d == viewportHint2.d && viewportHint2.a(loadType) <= viewportHint.a(loadType)) ? false : true;
    }
}
