package com.vuitton.android.presentation.screen.options.dispatch;

import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModelImpl$updateLocale$1", f = "DispatchCountryViewModelImpl.kt", l = {128, 129, 130, 131}, m = "invokeSuspend", v = 2)
final class DispatchCountryViewModelImpl$updateLocale$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DispatchCountryViewModelImpl f59804c;
    public final /* synthetic */ InAppDispatch d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f59805e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DispatchCountryViewModelImpl$updateLocale$1(DispatchCountryViewModelImpl dispatchCountryViewModelImpl, InAppDispatch inAppDispatch, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f59804c = dispatchCountryViewModelImpl;
        this.d = inAppDispatch;
        this.f59805e = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DispatchCountryViewModelImpl$updateLocale$1(this.f59804c, this.d, this.f59805e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DispatchCountryViewModelImpl$updateLocale$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006e  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0078, code lost:
    
        if (r9.emit(r1, r8) == r0) goto L28;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r8.f59803b
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModelImpl r6 = r8.f59804c
            if (r1 == 0) goto L2b
            if (r1 == r5) goto L27
            if (r1 == r4) goto L23
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L18
            kotlin.ResultKt.b(r9)
            goto L7b
        L18:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L1f:
            kotlin.ResultKt.b(r9)
            goto L6e
        L23:
            kotlin.ResultKt.b(r9)
            goto L63
        L27:
            kotlin.ResultKt.b(r9)
            goto L51
        L2b:
            kotlin.ResultKt.b(r9)
            kotlinx.coroutines.flow.MutableStateFlow r9 = r6.f59795k
        L30:
            java.lang.Object r1 = r9.getValue()
            r7 = r1
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            r7.getClass()
            java.lang.Boolean r7 = java.lang.Boolean.TRUE
            boolean r1 = r9.i(r1, r7)
            if (r1 == 0) goto L30
            com.vuitton.android.domain.usecase.locale.ReactToInAppDispatchChangeUseCase r9 = r6.d
            r8.f59803b = r5
            com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r1 = r8.d
            boolean r5 = r8.f59805e
            java.lang.Object r9 = r9.a(r1, r5, r8)
            if (r9 != r0) goto L51
            goto L7a
        L51:
            com.vuitton.android.domain.usecase.search.UpdateSearchHistoryUseCase r9 = r6.f59790e
            com.vuitton.foundation.model.domain.model.search.History r1 = new com.vuitton.foundation.model.domain.model.search.History
            kotlin.collections.EmptyList r5 = kotlin.collections.EmptyList.f71768b
            r1.<init>(r5)
            r8.f59803b = r4
            java.lang.Object r9 = r9.a(r1, r8)
            if (r9 != r0) goto L63
            goto L7a
        L63:
            com.vuitton.android.domain.usecase.products.RemoveLastViewedProductListUseCase r9 = r6.f59791f
            r8.f59803b = r3
            java.lang.Object r9 = r9.a(r8)
            if (r9 != r0) goto L6e
            goto L7a
        L6e:
            kotlinx.coroutines.flow.SharedFlowImpl r9 = r6.g
            kotlin.Unit r1 = kotlin.Unit.f71739a
            r8.f59803b = r2
            java.lang.Object r8 = r9.emit(r1, r8)
            if (r8 != r0) goto L7b
        L7a:
            return r0
        L7b:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModelImpl$updateLocale$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
