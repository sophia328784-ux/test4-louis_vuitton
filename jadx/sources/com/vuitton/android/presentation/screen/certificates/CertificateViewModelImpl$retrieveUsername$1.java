package com.vuitton.android.presentation.screen.certificates;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl", f = "CertificateViewModelImpl.kt", l = {184, 184}, m = "retrieveUsername", v = 2)
final class CertificateViewModelImpl$retrieveUsername$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f55647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CertificateViewModelImpl f55648c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateViewModelImpl$retrieveUsername$1(CertificateViewModelImpl certificateViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f55648c = certificateViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f55647b = obj;
        this.d |= Integer.MIN_VALUE;
        return CertificateViewModelImpl.Ac(this.f55648c, this);
    }
}
