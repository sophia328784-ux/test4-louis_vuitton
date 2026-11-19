package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LegalConsentContextUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$displayConsentBottomSheet$1", f = "PdpViewModelImpl.kt", l = {1200, 1205, 1209}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$displayConsentBottomSheet$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f61172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f61173c;
    public final /* synthetic */ PdpViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LegalConsentContextUiModel f61174e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$displayConsentBottomSheet$1(PdpViewModelImpl pdpViewModelImpl, LegalConsentContextUiModel legalConsentContextUiModel, Continuation continuation) {
        super(2, continuation);
        this.d = pdpViewModelImpl;
        this.f61174e = legalConsentContextUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$displayConsentBottomSheet$1(this.d, this.f61174e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$displayConsentBottomSheet$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:48:0x010f  */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0148, code lost:
    
        if (r3.u(r4, r23) == r1) goto L50;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:48:0x010f, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instruction units count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$displayConsentBottomSheet$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
