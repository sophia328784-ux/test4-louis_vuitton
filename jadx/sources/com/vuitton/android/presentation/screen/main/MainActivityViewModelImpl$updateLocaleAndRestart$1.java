package com.vuitton.android.presentation.screen.main;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$updateLocaleAndRestart$1", f = "MainActivityViewModelImpl.kt", l = {268, 269}, m = "invokeSuspend", v = 2)
final class MainActivityViewModelImpl$updateLocaleAndRestart$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivityViewModelImpl f59090c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivityViewModelImpl$updateLocaleAndRestart$1(MainActivityViewModelImpl mainActivityViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f59090c = mainActivityViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MainActivityViewModelImpl$updateLocaleAndRestart$1(this.f59090c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MainActivityViewModelImpl$updateLocaleAndRestart$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0041, code lost:
    
        if (r6.emit(r1, r5) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r5.f59089b
            com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl r2 = r5.f59090c
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L22
            if (r1 == r4) goto L19
            if (r1 != r3) goto L12
            kotlin.ResultKt.b(r6)
            goto L44
        L12:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L19:
            kotlin.ResultKt.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            r6.getClass()
            goto L37
        L22:
            kotlin.ResultKt.b(r6)
            com.vuitton.android.domain.usecase.applink.UpdateLocaleUseCase r6 = r2.f59058i
            com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch$Id$Companion r1 = com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch.Id.f67485b
            java.lang.String r1 = r5.d
            r1.getClass()
            r5.f59089b = r4
            java.lang.Object r6 = r6.a(r1, r5)
            if (r6 != r0) goto L37
            goto L43
        L37:
            kotlinx.coroutines.flow.SharedFlowImpl r6 = r2.E
            kotlin.Unit r1 = kotlin.Unit.f71739a
            r5.f59089b = r3
            java.lang.Object r5 = r6.emit(r1, r5)
            if (r5 != r0) goto L44
        L43:
            return r0
        L44:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$updateLocaleAndRestart$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
