package com.vuitton.android.presentation.screen.certificates;

import com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$getCertificatesList$1$certificateList$1", f = "CertificateViewModelImpl.kt", l = {96}, m = "invokeSuspend", v = 2)
final class CertificateViewModelImpl$getCertificatesList$1$certificateList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends CertificateUiModel>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55631b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CertificateViewModelImpl f55632c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateViewModelImpl$getCertificatesList$1$certificateList$1(CertificateViewModelImpl certificateViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f55632c = certificateViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CertificateViewModelImpl$getCertificatesList$1$certificateList$1(this.f55632c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CertificateViewModelImpl$getCertificatesList$1$certificateList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55631b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f55631b = 1;
            Object objZc = CertificateViewModelImpl.zc(this.f55632c, this);
            return objZc == coroutineSingletons ? coroutineSingletons : objZc;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            return obj;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
