package androidx.paging;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0018\u00010\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0004\"\b\b\u0001\u0010\u0003*\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "Landroidx/paging/PagingState;", "Key", "Value", "", "it", "Landroidx/paging/AccessorState;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
final class RemoteMediatorAccessImpl$launchRefresh$1$1$pendingPagingState$1 extends Lambda implements Function1<AccessorState<Object, Object>, PagingState<Object, Object>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final RemoteMediatorAccessImpl$launchRefresh$1$1$pendingPagingState$1 f18932c = new RemoteMediatorAccessImpl$launchRefresh$1$1$pendingPagingState$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object next;
        AccessorState accessorState = (AccessorState) obj;
        accessorState.getClass();
        Iterator<E> it = accessorState.f18514c.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((AccessorState.PendingRequest) next).f18515a != LoadType.REFRESH);
        AccessorState.PendingRequest pendingRequest = (AccessorState.PendingRequest) next;
        if (pendingRequest != null) {
            return pendingRequest.f18516b;
        }
        return null;
    }
}
