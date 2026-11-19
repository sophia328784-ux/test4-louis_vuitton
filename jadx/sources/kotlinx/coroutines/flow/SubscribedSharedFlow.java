package kotlinx.coroutines.flow;

import defpackage.md;
import defpackage.os;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002BD\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012-\u0010\n\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0004¢\u0006\u0002\b\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/flow/SubscribedSharedFlow;", "T", "Lkotlinx/coroutines/flow/SharedFlow;", "sharedFlow", "Lkotlin/Function2;", "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "action", "<init>", "(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class SubscribedSharedFlow<T> implements SharedFlow<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedFlow f75018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function2 f75019c;

    public SubscribedSharedFlow(SharedFlow<? extends T> sharedFlow, Function2<? super FlowCollector<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.f75018b = sharedFlow;
        this.f75019c = function2;
    }

    @Override // kotlinx.coroutines.flow.SharedFlow
    public final List e() {
        return this.f75018b.e();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.Flow
    public final Object f(FlowCollector flowCollector, Continuation continuation) {
        SubscribedSharedFlow$collect$1 subscribedSharedFlow$collect$1;
        if (continuation instanceof SubscribedSharedFlow$collect$1) {
            subscribedSharedFlow$collect$1 = (SubscribedSharedFlow$collect$1) continuation;
            int i2 = subscribedSharedFlow$collect$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                subscribedSharedFlow$collect$1.d = i2 - Integer.MIN_VALUE;
            } else {
                subscribedSharedFlow$collect$1 = new SubscribedSharedFlow$collect$1(this, continuation);
            }
        } else {
            subscribedSharedFlow$collect$1 = new SubscribedSharedFlow$collect$1(this, continuation);
        }
        Object obj = subscribedSharedFlow$collect$1.f75020b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = subscribedSharedFlow$collect$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            SubscribedFlowCollector subscribedFlowCollector = new SubscribedFlowCollector(flowCollector, this.f75019c);
            subscribedSharedFlow$collect$1.d = 1;
            if (this.f75018b.f(subscribedFlowCollector, subscribedSharedFlow$collect$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }
}
