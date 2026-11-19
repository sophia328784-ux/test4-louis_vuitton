package com.vuitton.android.presentation.screen.pdp;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$addOrRemoveFromWishlist$1$1", f = "PdpViewModelImpl.kt", l = {1045, 1047, 1051}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$addOrRemoveFromWishlist$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61151c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$addOrRemoveFromWishlist$1$1(PdpViewModelImpl pdpViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f61151c = pdpViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$addOrRemoveFromWishlist$1$1(this.f61151c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$addOrRemoveFromWishlist$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
    
        if (com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl.Ec(r0, r7, r8) == r2) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0064, code lost:
    
        if (com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl.yc(r0, r7, r8) == r2) goto L25;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl r0 = r8.f61151c
            kotlinx.coroutines.flow.MutableStateFlow r1 = r0.d0
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r8.f61150b
            r4 = 3
            r5 = 2
            r6 = 1
            java.lang.String r7 = r8.d
            if (r3 == 0) goto L25
            if (r3 == r6) goto L21
            if (r3 == r5) goto L1d
            if (r3 != r4) goto L16
            goto L1d
        L16:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L1d:
            kotlin.ResultKt.b(r9)
            goto L67
        L21:
            kotlin.ResultKt.b(r9)
            goto L4d
        L25:
            kotlin.ResultKt.b(r9)
        L28:
            java.lang.Object r9 = r1.getValue()
            r3 = r9
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            r3.getClass()
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            boolean r9 = r1.i(r9, r3)
            if (r9 == 0) goto L28
            com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase r9 = r0.x
            com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel$Companion r3 = com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel.f61763c
            r3.getClass()
            com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel.Companion.b(r7)
            r8.f61150b = r6
            java.lang.Object r9 = r9.a(r7, r8)
            if (r9 != r2) goto L4d
            goto L66
        L4d:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L5e
            r8.f61150b = r5
            java.lang.Object r8 = com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl.Ec(r0, r7, r8)
            if (r8 != r2) goto L67
            goto L66
        L5e:
            r8.f61150b = r4
            java.lang.Object r8 = com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl.yc(r0, r7, r8)
            if (r8 != r2) goto L67
        L66:
            return r2
        L67:
            java.lang.Object r8 = r1.getValue()
            r9 = r8
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            r9.getClass()
            java.lang.Boolean r9 = java.lang.Boolean.FALSE
            boolean r8 = r1.i(r8, r9)
            if (r8 == 0) goto L67
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$addOrRemoveFromWishlist$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
