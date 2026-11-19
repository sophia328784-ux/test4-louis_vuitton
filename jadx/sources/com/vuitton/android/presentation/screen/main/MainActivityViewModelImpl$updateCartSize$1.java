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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$updateCartSize$1", f = "MainActivityViewModelImpl.kt", l = {174, 179}, m = "invokeSuspend", v = 2)
final class MainActivityViewModelImpl$updateCartSize$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivityViewModelImpl f59088c;
    public final /* synthetic */ Integer d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivityViewModelImpl$updateCartSize$1(MainActivityViewModelImpl mainActivityViewModelImpl, Integer num, Continuation continuation) {
        super(2, continuation);
        this.f59088c = mainActivityViewModelImpl;
        this.d = num;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MainActivityViewModelImpl$updateCartSize$1(this.f59088c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MainActivityViewModelImpl$updateCartSize$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
    
        if (r7 == r2) goto L20;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl r0 = r7.f59088c
            kotlinx.coroutines.flow.MutableStateFlow r1 = r0.x
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r7.f59087b
            r4 = 0
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L23
            if (r3 == r6) goto L1f
            if (r3 != r5) goto L19
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r7 = r8.f71708b
            goto L4f
        L19:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r4
        L1f:
            kotlin.ResultKt.b(r8)
            goto L36
        L23:
            kotlin.ResultKt.b(r8)
            kotlinx.coroutines.flow.MutableStateFlow r8 = r0.v
            kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 r3 = new kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1
            r3.<init>(r8)
            r7.f59087b = r6
            java.lang.Object r8 = kotlinx.coroutines.flow.FlowKt.p(r3, r7)
            if (r8 != r2) goto L36
            goto L4e
        L36:
            com.vuitton.android.presentation.screen.main.models.MainActivityFeatureFlags r8 = (com.vuitton.android.presentation.screen.main.models.MainActivityFeatureFlags) r8
            boolean r8 = r8.f59122b
            if (r8 == 0) goto L73
            java.lang.Integer r8 = r7.d
            if (r8 == 0) goto L44
            r1.setValue(r8)
            goto L73
        L44:
            com.vuitton.android.domain.usecase.cart.GetCartSizeUseCase r8 = r0.f59057h
            r7.f59087b = r5
            java.lang.Object r7 = r8.a(r7)
            if (r7 != r2) goto L4f
        L4e:
            return r2
        L4f:
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            boolean r8 = r7 instanceof kotlin.Result.Failure
            if (r8 != 0) goto L64
            r8 = r7
            java.lang.Number r8 = (java.lang.Number) r8
            int r8 = r8.intValue()
            java.lang.Integer r2 = new java.lang.Integer
            r2.<init>(r8)
            r1.setValue(r2)
        L64:
            java.lang.Throwable r7 = kotlin.Result.a(r7)
            if (r7 == 0) goto L73
            com.vuitton.foundation.logger.Logger r7 = r0.f59053b
            java.lang.String r8 = com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl.J
            java.lang.String r0 = "Cart item count API error"
            r7.c(r8, r0, r4)
        L73:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$updateCartSize$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
