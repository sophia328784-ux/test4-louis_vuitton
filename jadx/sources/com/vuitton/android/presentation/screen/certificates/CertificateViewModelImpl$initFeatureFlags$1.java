package com.vuitton.android.presentation.screen.certificates;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl", f = "CertificateViewModelImpl.kt", l = {119, 120}, m = "initFeatureFlags", v = 2)
final class CertificateViewModelImpl$initFeatureFlags$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f55635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f55636c;
    public final /* synthetic */ CertificateViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f55637e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateViewModelImpl$initFeatureFlags$1(CertificateViewModelImpl certificateViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = certificateViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f55636c = obj;
        this.f55637e |= Integer.MIN_VALUE;
        return CertificateViewModelImpl.yc(this.d, this);
    }
}
