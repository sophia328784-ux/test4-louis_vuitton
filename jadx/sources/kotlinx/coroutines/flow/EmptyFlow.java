package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/flow/EmptyFlow;", "Lkotlinx/coroutines/flow/Flow;", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class EmptyFlow implements Flow {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final EmptyFlow f74790b = new EmptyFlow();

    @Override // kotlinx.coroutines.flow.Flow
    public final Object f(FlowCollector flowCollector, Continuation continuation) {
        return Unit.f71739a;
    }
}
