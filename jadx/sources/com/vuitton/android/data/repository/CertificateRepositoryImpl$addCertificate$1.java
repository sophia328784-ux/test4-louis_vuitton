package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.certificate.AddCertificateBody;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CertificateRepositoryImpl", f = "CertificateRepositoryImpl.kt", l = {62, 63}, m = "addCertificate-gIAlu-s", v = 2)
final class CertificateRepositoryImpl$addCertificate$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AddCertificateBody f47584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47585c;
    public final /* synthetic */ CertificateRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47586e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateRepositoryImpl$addCertificate$1(CertificateRepositoryImpl certificateRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = certificateRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47585c = obj;
        this.f47586e |= Integer.MIN_VALUE;
        Object objE = this.d.e(null, this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
