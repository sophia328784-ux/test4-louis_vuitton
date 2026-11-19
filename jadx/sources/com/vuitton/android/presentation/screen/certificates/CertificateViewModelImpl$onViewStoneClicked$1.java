package com.vuitton.android.presentation.screen.certificates;

import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$onViewStoneClicked$1", f = "CertificateViewModelImpl.kt", l = {152, 154, 161}, m = "invokeSuspend", v = 2)
final class CertificateViewModelImpl$onViewStoneClicked$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f55640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f55641c;
    public final /* synthetic */ CertificateViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f55642e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ CertificateDiamondUiModel f55643f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateViewModelImpl$onViewStoneClicked$1(CertificateViewModelImpl certificateViewModelImpl, String str, CertificateDiamondUiModel certificateDiamondUiModel, Continuation continuation) {
        super(2, continuation);
        this.d = certificateViewModelImpl;
        this.f55642e = str;
        this.f55643f = certificateDiamondUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CertificateViewModelImpl$onViewStoneClicked$1(this.d, this.f55642e, this.f55643f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CertificateViewModelImpl$onViewStoneClicked$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00a9  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c9, code lost:
    
        if (r3.u(r4, r24) == r1) goto L24;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r25) {
        /*
            Method dump skipped, instruction units count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$onViewStoneClicked$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
