package com.vuitton.android.presentation.screen.certificates.components.nfc;

import com.airbnb.lottie.compose.LottieAnimatable;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcScanState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.components.nfc.CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$2$1", f = "CertificateNfcScanBottomSheet.kt", l = {}, m = "invokeSuspend", v = 2)
final class CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ NfcScanState f55723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LottieAnimatable f55724c;
    public final /* synthetic */ Function0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$2$1(NfcScanState nfcScanState, LottieAnimatable lottieAnimatable, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f55723b = nfcScanState;
        this.f55724c = lottieAnimatable;
        this.d = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$2$1(this.f55723b, this.f55724c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (this.f55723b instanceof NfcScanState.Success) {
            LottieAnimatable lottieAnimatable = this.f55724c;
            if (!lottieAnimatable.isPlaying() && lottieAnimatable.c() > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                this.d.mo47invoke();
            }
        }
        return Unit.f71739a;
    }
}
