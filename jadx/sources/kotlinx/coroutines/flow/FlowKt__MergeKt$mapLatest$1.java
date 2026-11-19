package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0003H\n"}, d2 = {"<anonymous>", "", "R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "it"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1", f = "Merge.kt", l = {213, 213}, m = "invokeSuspend", v = 1)
final class FlowKt__MergeKt$mapLatest$1 extends SuspendLambda implements Function3<FlowCollector<Object>, Object, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FlowCollector f74882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f74883c;
    public /* synthetic */ FlowCollector d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f74884e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function2 f74885f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__MergeKt$mapLatest$1(Function2 function2, Continuation continuation) {
        super(3, continuation);
        this.f74885f = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        FlowKt__MergeKt$mapLatest$1 flowKt__MergeKt$mapLatest$1 = new FlowKt__MergeKt$mapLatest$1(this.f74885f, (Continuation) obj3);
        flowKt__MergeKt$mapLatest$1.d = (FlowCollector) obj;
        flowKt__MergeKt$mapLatest$1.f74884e = obj2;
        return flowKt__MergeKt$mapLatest$1.invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0041, code lost:
    
        if (r0.emit(r8, r7) == r2) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            kotlinx.coroutines.flow.FlowCollector r0 = r7.d
            java.lang.Object r1 = r7.f74884e
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r7.f74883c
            r4 = 2
            r5 = 1
            r6 = 0
            if (r3 == 0) goto L21
            if (r3 == r5) goto L1b
            if (r3 != r4) goto L15
            kotlin.ResultKt.b(r8)
            goto L44
        L15:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r6
        L1b:
            kotlinx.coroutines.flow.FlowCollector r0 = r7.f74882b
            kotlin.ResultKt.b(r8)
            goto L35
        L21:
            kotlin.ResultKt.b(r8)
            r7.d = r6
            r7.f74884e = r6
            r7.f74882b = r0
            r7.f74883c = r5
            kotlin.jvm.functions.Function2 r8 = r7.f74885f
            java.lang.Object r8 = r8.invoke(r1, r7)
            if (r8 != r2) goto L35
            goto L43
        L35:
            r7.d = r6
            r7.f74884e = r6
            r7.f74882b = r6
            r7.f74883c = r4
            java.lang.Object r7 = r0.emit(r8, r7)
            if (r7 != r2) goto L44
        L43:
            return r2
        L44:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
