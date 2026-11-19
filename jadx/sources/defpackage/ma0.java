package defpackage;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ma0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f76224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LookHandler.DownloadCallback f76225b;

    public /* synthetic */ ma0(LookHandler.DownloadCallback downloadCallback, int i2) {
        this.f76224a = i2;
        this.f76225b = downloadCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f76224a;
        LookHandler.DownloadCallback downloadCallback = this.f76225b;
        switch (i2) {
            case 0:
                Log.g(3, "LookHandler", "[download] success");
                downloadCallback.onSuccess();
                break;
            default:
                PfCommons.c(new aa0(downloadCallback, (DownloadReport.ProgressReport) obj, 1));
                break;
        }
    }
}
