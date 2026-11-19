package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.SharedFlowImpl", f = "SharedFlow.kt", l = {387, 394, 397}, m = "collect$suspendImpl", v = 1)
final class SharedFlowImpl$collect$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SharedFlowImpl f74974b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FlowCollector f74975c;
    public SharedFlowSlot d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Job f74976e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f74977f;
    public final /* synthetic */ SharedFlowImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f74978h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedFlowImpl$collect$1(SharedFlowImpl sharedFlowImpl, Continuation continuation) {
        super(continuation);
        this.g = sharedFlowImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f74977f = obj;
        this.f74978h |= Integer.MIN_VALUE;
        return SharedFlowImpl.o(this.g, null, this);
    }
}
