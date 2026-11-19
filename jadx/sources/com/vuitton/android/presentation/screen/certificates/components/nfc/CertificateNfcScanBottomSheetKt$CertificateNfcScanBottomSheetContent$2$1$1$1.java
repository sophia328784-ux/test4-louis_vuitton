package com.vuitton.android.presentation.screen.certificates.components.nfc;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcScanState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.components.nfc.CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$1$1", f = "CertificateNfcScanBottomSheet.kt", l = {115}, m = "invokeSuspend", v = 2)
final class CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LottieCompositionResultImpl f55721c;
    public final /* synthetic */ LottieAnimatable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NfcScanState f55722e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$1$1(LottieCompositionResultImpl lottieCompositionResultImpl, LottieAnimatable lottieAnimatable, NfcScanState nfcScanState, Continuation continuation) {
        super(2, continuation);
        this.f55721c = lottieCompositionResultImpl;
        this.d = lottieAnimatable;
        this.f55722e = nfcScanState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$1$1(this.f55721c, this.d, this.f55722e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55720b;
        if (i2 == 0) {
            ResultKt.b(obj);
            LottieComposition f10755b = this.f55721c.getF10755b();
            if (f10755b != null) {
                NfcScanState nfcScanState = this.f55722e;
                nfcScanState.getClass();
                int i3 = ((nfcScanState instanceof NfcScanState.Scanning) || (nfcScanState instanceof NfcScanState.Processing)) ? Integer.MAX_VALUE : 1;
                this.f55720b = 1;
                if (LottieAnimatable.DefaultImpls.a(this.d, f10755b, i3, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, this, 2042) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
