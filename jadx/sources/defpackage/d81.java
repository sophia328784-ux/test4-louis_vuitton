package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.b;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class d81 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f68475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f68476b;

    public /* synthetic */ d81(b bVar, int i2) {
        this.f68475a = i2;
        this.f68476b = bVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f68475a;
        b bVar = this.f68476b;
        switch (i2) {
            case 0:
                a.A(new StringBuilder("[parseTemplate] succeeded. guid="), bVar.f41423a, 3, "BackgroundDownloader");
                break;
            case 1:
                Log.e("BackgroundDownloader", "[parseTemplate] failed. guid=" + bVar.f41423a, (Throwable) obj);
                break;
            case 2:
                a.A(new StringBuilder("[createDownloadSingle] succeeded. guid="), bVar.f41423a, 3, "BackgroundDownloader");
                break;
            default:
                Log.e("BackgroundDownloader", "[createDownloadSingle] failed. guid=" + bVar.f41423a, (Throwable) obj);
                break;
        }
    }
}
