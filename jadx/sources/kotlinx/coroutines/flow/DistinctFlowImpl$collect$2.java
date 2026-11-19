package kotlinx.coroutines.flow;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
final class DistinctFlowImpl$collect$2<T> implements FlowCollector {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DistinctFlowImpl f74786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f74787c;
    public final /* synthetic */ FlowCollector d;

    public DistinctFlowImpl$collect$2(DistinctFlowImpl distinctFlowImpl, Ref$ObjectRef ref$ObjectRef, FlowCollector flowCollector) {
        this.f74786b = distinctFlowImpl;
        this.f74787c = ref$ObjectRef;
        this.d = flowCollector;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        DistinctFlowImpl$collect$2$emit$1 distinctFlowImpl$collect$2$emit$1;
        if (continuation instanceof DistinctFlowImpl$collect$2$emit$1) {
            distinctFlowImpl$collect$2$emit$1 = (DistinctFlowImpl$collect$2$emit$1) continuation;
            int i2 = distinctFlowImpl$collect$2$emit$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                distinctFlowImpl$collect$2$emit$1.d = i2 - Integer.MIN_VALUE;
            } else {
                distinctFlowImpl$collect$2$emit$1 = new DistinctFlowImpl$collect$2$emit$1(this, continuation);
            }
        } else {
            distinctFlowImpl$collect$2$emit$1 = new DistinctFlowImpl$collect$2$emit$1(this, continuation);
        }
        Object obj2 = distinctFlowImpl$collect$2$emit$1.f74788b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = distinctFlowImpl$collect$2$emit$1.d;
        if (i3 == 0) {
            ResultKt.b(obj2);
            DistinctFlowImpl distinctFlowImpl = this.f74786b;
            Object objInvoke = distinctFlowImpl.f74785c.invoke(obj);
            Ref$ObjectRef ref$ObjectRef = this.f74787c;
            Object obj3 = ref$ObjectRef.f71921b;
            if (obj3 != NullSurrogateKt.f75085a && ((Boolean) distinctFlowImpl.d.invoke(obj3, objInvoke)).booleanValue()) {
                return Unit.f71739a;
            }
            ref$ObjectRef.f71921b = objInvoke;
            distinctFlowImpl$collect$2$emit$1.d = 1;
            if (this.d.emit(obj, distinctFlowImpl$collect$2$emit$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj2);
        }
        return Unit.f71739a;
    }
}
