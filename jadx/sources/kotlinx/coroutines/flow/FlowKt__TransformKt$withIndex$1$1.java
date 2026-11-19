package kotlinx.coroutines.flow;

import defpackage.lc0;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
final class FlowKt__TransformKt$withIndex$1$1<T> implements FlowCollector {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FlowCollector f74933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Ref$IntRef f74934c;

    public FlowKt__TransformKt$withIndex$1$1(Ref$IntRef ref$IntRef, FlowCollector flowCollector) {
        this.f74933b = flowCollector;
        this.f74934c = ref$IntRef;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        FlowKt__TransformKt$withIndex$1$1$emit$1 flowKt__TransformKt$withIndex$1$1$emit$1;
        if (continuation instanceof FlowKt__TransformKt$withIndex$1$1$emit$1) {
            flowKt__TransformKt$withIndex$1$1$emit$1 = (FlowKt__TransformKt$withIndex$1$1$emit$1) continuation;
            int i2 = flowKt__TransformKt$withIndex$1$1$emit$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__TransformKt$withIndex$1$1$emit$1.d = i2 - Integer.MIN_VALUE;
            } else {
                flowKt__TransformKt$withIndex$1$1$emit$1 = new FlowKt__TransformKt$withIndex$1$1$emit$1(this, continuation);
            }
        } else {
            flowKt__TransformKt$withIndex$1$1$emit$1 = new FlowKt__TransformKt$withIndex$1$1$emit$1(this, continuation);
        }
        Object obj2 = flowKt__TransformKt$withIndex$1$1$emit$1.f74935b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = flowKt__TransformKt$withIndex$1$1$emit$1.d;
        if (i3 == 0) {
            ResultKt.b(obj2);
            Ref$IntRef ref$IntRef = this.f74934c;
            int i4 = ref$IntRef.f71919b;
            ref$IntRef.f71919b = i4 + 1;
            if (i4 < 0) {
                lc0.l("Index overflow has happened");
                return null;
            }
            IndexedValue indexedValue = new IndexedValue(i4, obj);
            flowKt__TransformKt$withIndex$1$1$emit$1.d = 1;
            if (this.f74933b.emit(indexedValue, flowKt__TransformKt$withIndex$1$1$emit$1) == coroutineSingletons) {
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
