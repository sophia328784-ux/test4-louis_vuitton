package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002BD\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012-\u0010\t\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/flow/SubscribedFlowCollector;", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "action", "<init>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class SubscribedFlowCollector<T> implements FlowCollector<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FlowCollector f75013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function2 f75014c;

    public SubscribedFlowCollector(FlowCollector<? super T> flowCollector, Function2<? super FlowCollector<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.f75013b = flowCollector;
        this.f75014c = function2;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005c  */
    /* JADX WARN: Code duplicated, block: B:32:0x006c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
    
        if (((kotlinx.coroutines.flow.SubscribedFlowCollector) r4).b(r0) == r1) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(kotlin.coroutines.jvm.internal.ContinuationImpl r9) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1 r0 = (kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1) r0
            int r1 = r0.f75017e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f75017e = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1 r0 = new kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.f75016c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f75017e
            r3 = 0
            kotlinx.coroutines.flow.FlowCollector r4 = r8.f75013b
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L3b
            if (r2 == r6) goto L33
            if (r2 != r5) goto L2d
            kotlin.ResultKt.b(r9)
            goto L69
        L2d:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r3
        L33:
            kotlinx.coroutines.flow.internal.SafeCollector r8 = r0.f75015b
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L39
            goto L55
        L39:
            r9 = move-exception
            goto L73
        L3b:
            kotlin.ResultKt.b(r9)
            kotlinx.coroutines.flow.internal.SafeCollector r9 = new kotlinx.coroutines.flow.internal.SafeCollector
            kotlin.coroutines.CoroutineContext r2 = r0.getContext()
            r9.<init>(r4, r2)
            kotlin.jvm.functions.Function2 r8 = r8.f75014c     // Catch: java.lang.Throwable -> L6f
            r0.f75015b = r9     // Catch: java.lang.Throwable -> L6f
            r0.f75017e = r6     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r8 = r8.invoke(r9, r0)     // Catch: java.lang.Throwable -> L6f
            if (r8 != r1) goto L54
            goto L68
        L54:
            r8 = r9
        L55:
            r8.releaseIntercepted()
            boolean r8 = r4 instanceof kotlinx.coroutines.flow.SubscribedFlowCollector
            if (r8 == 0) goto L6c
            kotlinx.coroutines.flow.SubscribedFlowCollector r4 = (kotlinx.coroutines.flow.SubscribedFlowCollector) r4
            r0.f75015b = r3
            r0.f75017e = r5
            java.lang.Object r8 = r4.b(r0)
            if (r8 != r1) goto L69
        L68:
            return r1
        L69:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        L6c:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        L6f:
            r8 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
        L73:
            r8.releaseIntercepted()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SubscribedFlowCollector.b(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        return this.f75013b.emit(obj, continuation);
    }
}
