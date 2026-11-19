package com.perfectcorp.common.network;

import com.perfectcorp.thirdparty.io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes3.dex */
final class d implements Function<DownloadReport.ProgressReport, DownloadReport.CompleteReport> {
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        BaseDownloadHandle.b bVar = ((BaseDownloadHandle.c) ((DownloadReport.ProgressReport) obj)).f39304c;
        return new BaseDownloadHandle.a(bVar.f39301a, bVar.f39303c);
    }
}
