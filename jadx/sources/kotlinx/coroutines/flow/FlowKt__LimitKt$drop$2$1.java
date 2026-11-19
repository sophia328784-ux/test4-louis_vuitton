package kotlinx.coroutines.flow;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
final class FlowKt__LimitKt$drop$2$1<T> implements FlowCollector {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Ref$IntRef f74859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f74860c;
    public final /* synthetic */ FlowCollector d;

    public FlowKt__LimitKt$drop$2$1(Ref$IntRef ref$IntRef, int i2, FlowCollector flowCollector) {
        this.f74859b = ref$IntRef;
        this.f74860c = i2;
        this.d = flowCollector;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        FlowKt__LimitKt$drop$2$1$emit$1 flowKt__LimitKt$drop$2$1$emit$1;
        if (continuation instanceof FlowKt__LimitKt$drop$2$1$emit$1) {
            flowKt__LimitKt$drop$2$1$emit$1 = (FlowKt__LimitKt$drop$2$1$emit$1) continuation;
            int i2 = flowKt__LimitKt$drop$2$1$emit$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$drop$2$1$emit$1.d = i2 - Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$drop$2$1$emit$1 = new FlowKt__LimitKt$drop$2$1$emit$1(this, continuation);
            }
        } else {
            flowKt__LimitKt$drop$2$1$emit$1 = new FlowKt__LimitKt$drop$2$1$emit$1(this, continuation);
        }
        Object obj2 = flowKt__LimitKt$drop$2$1$emit$1.f74861b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = flowKt__LimitKt$drop$2$1$emit$1.d;
        if (i3 == 0) {
            ResultKt.b(obj2);
            Ref$IntRef ref$IntRef = this.f74859b;
            int i4 = ref$IntRef.f71919b;
            if (i4 < this.f74860c) {
                ref$IntRef.f71919b = i4 + 1;
                return Unit.f71739a;
            }
            flowKt__LimitKt$drop$2$1$emit$1.d = 1;
            if (this.d.emit(obj, flowKt__LimitKt$drop$2$1$emit$1) == coroutineSingletons) {
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
