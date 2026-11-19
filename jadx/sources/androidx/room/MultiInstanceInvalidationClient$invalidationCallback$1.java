package androidx.room;

import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/room/MultiInstanceInvalidationClient$invalidationCallback$1", "Landroidx/room/IMultiInstanceInvalidationCallback$Stub;", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MultiInstanceInvalidationClient$invalidationCallback$1 extends IMultiInstanceInvalidationCallback.Stub {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MultiInstanceInvalidationClient f19430a;

    public MultiInstanceInvalidationClient$invalidationCallback$1(MultiInstanceInvalidationClient multiInstanceInvalidationClient) {
        this.f19430a = multiInstanceInvalidationClient;
    }

    @Override // androidx.room.IMultiInstanceInvalidationCallback
    public final void x(String[] strArr) {
        strArr.getClass();
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.f19430a;
        BuildersKt.c(multiInstanceInvalidationClient.d, null, null, new MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1(strArr, multiInstanceInvalidationClient, null), 3);
    }
}
