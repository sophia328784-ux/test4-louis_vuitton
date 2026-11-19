package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.certificate.CertificateBffBody;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CertificateRepositoryImpl", f = "CertificateRepositoryImpl.kt", l = {70, EACTags.MESSAGE_REFERENCE}, m = "transferCertificate-gIAlu-s", v = 2)
final class CertificateRepositoryImpl$transferCertificate$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CertificateBffBody f47594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47595c;
    public final /* synthetic */ CertificateRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47596e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateRepositoryImpl$transferCertificate$1(CertificateRepositoryImpl certificateRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = certificateRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47595c = obj;
        this.f47596e |= Integer.MIN_VALUE;
        Object objA = this.d.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
