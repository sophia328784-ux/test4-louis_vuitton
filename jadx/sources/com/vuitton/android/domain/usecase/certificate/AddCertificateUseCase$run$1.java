package com.vuitton.android.domain.usecase.certificate;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.certificate.AddCertificateUseCase", f = "AddCertificateUseCase.kt", l = {16}, m = "run-gIAlu-s", v = 2)
final class AddCertificateUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddCertificateUseCase f49628c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddCertificateUseCase$run$1(AddCertificateUseCase addCertificateUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49628c = addCertificateUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49627b = obj;
        this.d |= Integer.MIN_VALUE;
        Serializable serializableA = this.f49628c.a(null, this);
        return serializableA == CoroutineSingletons.COROUTINE_SUSPENDED ? serializableA : new Result(serializableA);
    }
}
