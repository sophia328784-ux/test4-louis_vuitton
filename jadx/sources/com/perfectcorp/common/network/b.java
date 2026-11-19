package com.perfectcorp.common.network;

import com.perfectcorp.thirdparty.io.reactivex.subjects.Subject;

/* JADX INFO: loaded from: classes3.dex */
final class b implements ProgressCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ Subject f39364a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ BaseDownloadHandle f39365b;

    @Override // com.perfectcorp.common.network.ProgressCallback
    public final void a(double d) {
        if (d < 1.0d) {
            Subject subject = this.f39364a;
            BaseDownloadHandle baseDownloadHandle = this.f39365b;
            subject.onNext(new BaseDownloadHandle.b(baseDownloadHandle.f39298a, d, baseDownloadHandle.f39299b));
        }
    }
}
