package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.StateFlowImpl", f = "StateFlow.kt", l = {389, 401, 406}, m = "collect", v = 1)
final class StateFlowImpl$collect$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FlowCollector f75004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f75005c;
    public Job d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f75006e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f75007f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ StateFlowImpl f75008h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f75009i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateFlowImpl$collect$1(StateFlowImpl stateFlowImpl, Continuation continuation) {
        super(continuation);
        this.f75008h = stateFlowImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f75009i |= Integer.MIN_VALUE;
        return this.f75008h.f(null, this);
    }
}
