package com.vuitton.android.domain.usecase.certificate;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.certificate.TransferCertificateUseCase", f = "TransferCertificateUseCase.kt", l = {19}, m = "run-gIAlu-s", v = 2)
final class TransferCertificateUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TransferCertificateUseCase f49641c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferCertificateUseCase$run$1(TransferCertificateUseCase transferCertificateUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49641c = transferCertificateUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49640b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49641c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
