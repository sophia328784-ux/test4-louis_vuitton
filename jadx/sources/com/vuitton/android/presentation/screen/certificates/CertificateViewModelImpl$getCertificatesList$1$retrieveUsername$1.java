package com.vuitton.android.presentation.screen.certificates;

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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$getCertificatesList$1$retrieveUsername$1", f = "CertificateViewModelImpl.kt", l = {97}, m = "invokeSuspend", v = 2)
final class CertificateViewModelImpl$getCertificatesList$1$retrieveUsername$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CertificateViewModelImpl f55634c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateViewModelImpl$getCertificatesList$1$retrieveUsername$1(CertificateViewModelImpl certificateViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f55634c = certificateViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CertificateViewModelImpl$getCertificatesList$1$retrieveUsername$1(this.f55634c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CertificateViewModelImpl$getCertificatesList$1$retrieveUsername$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55633b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f55633b = 1;
            Object objAc = CertificateViewModelImpl.Ac(this.f55634c, this);
            return objAc == coroutineSingletons ? coroutineSingletons : objAc;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            return obj;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
