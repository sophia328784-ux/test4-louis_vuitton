package com.vuitton.android.presentation.screen.certificates.components.nfc;

import android.app.Activity;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl;
import com.vuitton.android.presentation.screen.certificates.nfc.model.CertificateNfcScanViewState;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcScanState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.components.nfc.CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1", f = "CertificateNfcScanComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CertificateNfcScanViewModelImpl f55726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Activity f55727c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f55728e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f55729f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1(CertificateNfcScanViewModelImpl certificateNfcScanViewModelImpl, Activity activity, Function0 function0, Function1 function1, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f55726b = certificateNfcScanViewModelImpl;
        this.f55727c = activity;
        this.d = function0;
        this.f55728e = function1;
        this.f55729f = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1(this.f55726b, this.f55727c, this.d, this.f55728e, this.f55729f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutableState mutableState = this.f55729f;
        NfcScanState nfcScanState = ((CertificateNfcScanViewState) mutableState.getF10755b()).f55933b;
        if (nfcScanState instanceof NfcScanState.Scanning) {
            this.f55726b.yc(this.f55727c);
        } else if (nfcScanState instanceof NfcScanState.Success) {
            this.d.mo47invoke();
        } else if (nfcScanState instanceof NfcScanState.Error) {
            NfcScanState nfcScanState2 = ((CertificateNfcScanViewState) mutableState.getF10755b()).f55933b;
            nfcScanState2.getClass();
            this.f55728e.invoke(((NfcScanState.Error) nfcScanState2).f55935a.name());
        }
        return Unit.f71739a;
    }
}
