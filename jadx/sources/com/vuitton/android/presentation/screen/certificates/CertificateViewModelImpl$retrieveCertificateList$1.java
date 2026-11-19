package com.vuitton.android.presentation.screen.certificates;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl", f = "CertificateViewModelImpl.kt", l = {126, 135}, m = "retrieveCertificateList", v = 2)
final class CertificateViewModelImpl$retrieveCertificateList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f55644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f55645c;
    public final /* synthetic */ CertificateViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f55646e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateViewModelImpl$retrieveCertificateList$1(CertificateViewModelImpl certificateViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = certificateViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f55645c = obj;
        this.f55646e |= Integer.MIN_VALUE;
        return CertificateViewModelImpl.zc(this.d, this);
    }
}
