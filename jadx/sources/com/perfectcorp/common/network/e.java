package com.perfectcorp.common.network;

import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;

/* JADX INFO: loaded from: classes3.dex */
final class e implements Predicate<DownloadReport.ProgressReport> {
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public final boolean test(Object obj) {
        return ((Double) ((DownloadReport.ProgressReport) obj).f39309b).doubleValue() == 1.0d;
    }
}
