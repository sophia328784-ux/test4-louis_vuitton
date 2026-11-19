package com.vuitton.foundation.model.domain.model.common;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlin/Result;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.foundation.model.domain.model.common.ResultStrategy$fastThenNew$1", f = "ResultStrategy.kt", l = {25, 30, 34, 36, 40}, m = "invokeSuspend", v = 2)
final class ResultStrategy$fastThenNew$1 extends SuspendLambda implements Function2<FlowCollector<? super Result<Object>>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f67120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f67121c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f67122e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ResultStrategy f67123f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResultStrategy$fastThenNew$1(ResultStrategy resultStrategy, Continuation continuation) {
        super(2, continuation);
        this.f67123f = resultStrategy;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ResultStrategy$fastThenNew$1 resultStrategy$fastThenNew$1 = new ResultStrategy$fastThenNew$1(this.f67123f, continuation);
        resultStrategy$fastThenNew$1.f67122e = obj;
        return resultStrategy$fastThenNew$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ResultStrategy$fastThenNew$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0082  */
    /* JADX WARN: Code duplicated, block: B:38:0x008a  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00bc, code lost:
    
        if (r0.emit(r13, r12) == r1) goto L46;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            java.lang.Object r0 = r12.f67122e
            kotlinx.coroutines.flow.FlowCollector r0 = (kotlinx.coroutines.flow.FlowCollector) r0
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r12.d
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r3 = r12.f67123f
            r4 = 5
            r5 = 4
            r6 = 3
            r7 = 2
            r8 = 1
            r9 = 0
            r10 = 0
            if (r2 == 0) goto L46
            if (r2 == r8) goto L40
            if (r2 == r7) goto L3c
            if (r2 == r6) goto L31
            if (r2 == r5) goto L28
            if (r2 != r4) goto L22
            kotlin.ResultKt.b(r13)
            goto Lbf
        L22:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r12)
            return r10
        L28:
            int r2 = r12.f67121c
            java.lang.Object r3 = r12.f67120b
            kotlin.ResultKt.b(r13)
            goto L9e
        L31:
            int r2 = r12.f67121c
            kotlin.ResultKt.b(r13)
            kotlin.Result r13 = (kotlin.Result) r13
            java.lang.Object r13 = r13.f71708b
        L3a:
            r3 = r13
            goto L84
        L3c:
            kotlin.ResultKt.b(r13)
            goto L75
        L40:
            int r2 = r12.f67121c
            kotlin.ResultKt.b(r13)
            goto L58
        L46:
            kotlin.ResultKt.b(r13)
            r12.f67122e = r0
            r12.f67121c = r9
            r12.d = r8
            java.io.Serializable r13 = r3.g(r12)
            if (r13 != r1) goto L57
            goto Lbe
        L57:
            r2 = r9
        L58:
            kotlin.Result r13 = (kotlin.Result) r13
            if (r13 == 0) goto L63
            java.lang.Object r11 = r13.f71708b
            boolean r11 = r11 instanceof kotlin.Result.Failure
            if (r11 != 0) goto L63
            goto L64
        L63:
            r13 = r10
        L64:
            if (r13 != 0) goto L68
            r8 = r9
            goto L75
        L68:
            r12.f67122e = r0
            r12.f67121c = r2
            r12.d = r7
            java.lang.Object r13 = r0.emit(r13, r12)
            if (r13 != r1) goto L75
            goto Lbe
        L75:
            r12.f67122e = r0
            r12.f67121c = r8
            r12.d = r6
            java.lang.Object r13 = r3.b(r12)
            if (r13 != r1) goto L82
            goto Lbe
        L82:
            r2 = r8
            goto L3a
        L84:
            kotlin.Result$Companion r13 = kotlin.Result.INSTANCE
            boolean r13 = r3 instanceof kotlin.Result.Failure
            if (r13 != 0) goto L9e
            kotlin.Result r13 = new kotlin.Result
            r13.<init>(r3)
            r12.f67122e = r0
            r12.f67120b = r3
            r12.f67121c = r2
            r12.d = r5
            java.lang.Object r13 = r0.emit(r13, r12)
            if (r13 != r1) goto L9e
            goto Lbe
        L9e:
            java.lang.Throwable r13 = kotlin.Result.a(r3)
            if (r13 == 0) goto Lbf
            if (r2 != 0) goto Lbf
            kotlin.Result$Failure r5 = new kotlin.Result$Failure
            r5.<init>(r13)
            kotlin.Result r13 = new kotlin.Result
            r13.<init>(r5)
            r12.f67122e = r10
            r12.f67120b = r3
            r12.f67121c = r2
            r12.d = r4
            java.lang.Object r12 = r0.emit(r13, r12)
            if (r12 != r1) goto Lbf
        Lbe:
            return r1
        Lbf:
            kotlin.Unit r12 = kotlin.Unit.f71739a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.foundation.model.domain.model.common.ResultStrategy$fastThenNew$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
