package com.vuitton.android.domain.usecase.certificate;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.certificate.UnlockCertificateUseCase", f = "UnlockCertificateUseCase.kt", l = {7}, m = "run-gIAlu-s", v = 2)
final class UnlockCertificateUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UnlockCertificateUseCase f49644c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockCertificateUseCase$run$1(UnlockCertificateUseCase unlockCertificateUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49644c = unlockCertificateUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49643b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49644c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
