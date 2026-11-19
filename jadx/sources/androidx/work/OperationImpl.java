package androidx.work;

import androidx.lifecycle.LiveData;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/work/OperationImpl;", "Landroidx/work/Operation;", "Landroidx/lifecycle/LiveData;", "Landroidx/work/Operation$State;", "state", "Lcom/google/common/util/concurrent/ListenableFuture;", "Landroidx/work/Operation$State$SUCCESS;", "future", "<init>", "(Landroidx/lifecycle/LiveData;Lcom/google/common/util/concurrent/ListenableFuture;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class OperationImpl implements Operation {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ListenableFuture f20268c;

    public OperationImpl(LiveData<Operation.State> liveData, ListenableFuture<Operation.State.SUCCESS> listenableFuture) {
        liveData.getClass();
        listenableFuture.getClass();
        this.f20268c = listenableFuture;
    }
}
