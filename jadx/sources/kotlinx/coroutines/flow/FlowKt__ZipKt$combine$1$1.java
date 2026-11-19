package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H\n"}, d2 = {"<anonymous>", "", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", ""}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1", f = "Zip.kt", l = {29, 29}, m = "invokeSuspend", v = 1)
final class FlowKt__ZipKt$combine$1$1 extends SuspendLambda implements Function3<FlowCollector<Object>, Object[], Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FlowCollector f74957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f74958c;
    public /* synthetic */ FlowCollector d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object[] f74959e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function3 f74960f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combine$1$1(Function3 function3, Continuation continuation) {
        super(3, continuation);
        this.f74960f = function3;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$1 = new FlowKt__ZipKt$combine$1$1(this.f74960f, (Continuation) obj3);
        flowKt__ZipKt$combine$1$1.d = (FlowCollector) obj;
        flowKt__ZipKt$combine$1$1.f74959e = (Object[]) obj2;
        return flowKt__ZipKt$combine$1$1.invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0046, code lost:
    
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
            java.lang.Object[] r1 = r7.f74959e
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r7.f74958c
            r4 = 2
            r5 = 1
            r6 = 0
            if (r3 == 0) goto L21
            if (r3 == r5) goto L1b
            if (r3 != r4) goto L15
            kotlin.ResultKt.b(r8)
            goto L49
        L15:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r6
        L1b:
            kotlinx.coroutines.flow.FlowCollector r0 = r7.f74957b
            kotlin.ResultKt.b(r8)
            goto L3a
        L21:
            kotlin.ResultKt.b(r8)
            r8 = 0
            r8 = r1[r8]
            r1 = r1[r5]
            r7.d = r6
            r7.f74959e = r6
            r7.f74957b = r0
            r7.f74958c = r5
            kotlin.jvm.functions.Function3 r3 = r7.f74960f
            java.lang.Object r8 = r3.A(r8, r1, r7)
            if (r8 != r2) goto L3a
            goto L48
        L3a:
            r7.d = r6
            r7.f74959e = r6
            r7.f74957b = r6
            r7.f74958c = r4
            java.lang.Object r7 = r0.emit(r8, r7)
            if (r7 != r2) goto L49
        L48:
            return r2
        L49:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
