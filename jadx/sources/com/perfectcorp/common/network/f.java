package com.perfectcorp.common.network;

import com.perfectcorp.thirdparty.io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes3.dex */
final class f implements Function<BaseDownloadHandle.b, DownloadReport.ProgressReport> {
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final /* synthetic */ Object apply(Object obj) {
        return new BaseDownloadHandle.c((BaseDownloadHandle.b) obj);
    }
}
