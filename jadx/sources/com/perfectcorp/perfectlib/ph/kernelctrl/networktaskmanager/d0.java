package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.thirdparty.com.google.common.base.Function;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import defpackage.et;
import java.io.File;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class d0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41476b;

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
    public final Object apply(Object obj) {
        switch (this.f41476b) {
            case 0:
                DownloadReport.CompleteReport completeReport = (DownloadReport.CompleteReport) obj;
                ExecutorService executorService = c.b.z;
                Objects.requireNonNull(completeReport);
                return (File) completeReport.f39309b;
            default:
                DownloadTaskCancelable downloadTaskCancelable = DownloadTaskCancelable.f40351e;
                return Disposables.b(new et((c.b) obj, 5));
        }
    }
}
