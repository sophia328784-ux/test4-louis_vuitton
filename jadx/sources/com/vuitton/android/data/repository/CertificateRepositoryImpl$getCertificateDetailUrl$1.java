package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CertificateRepositoryImpl", f = "CertificateRepositoryImpl.kt", l = {113, 114}, m = "getCertificateDetailUrl-gIAlu-s", v = 2)
final class CertificateRepositoryImpl$getCertificateDetailUrl$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f47588c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47589e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f47590f;
    public final /* synthetic */ CertificateRepositoryImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f47591h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateRepositoryImpl$getCertificateDetailUrl$1(CertificateRepositoryImpl certificateRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = certificateRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47590f = obj;
        this.f47591h |= Integer.MIN_VALUE;
        Object objB = this.g.b(null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
