package defpackage;

import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.perfectlib.JewelryVtoApplier;
import com.perfectcorp.perfectlib.NailVtoApplier;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.VtoApplier;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class s40 implements ProgressCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f79706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f79707b;

    public /* synthetic */ s40(Object obj, int i2) {
        this.f79706a = i2;
        this.f79707b = obj;
    }

    @Override // com.perfectcorp.common.network.ProgressCallback
    public final void a(double d) {
        int i2 = this.f79706a;
        Object obj = this.f79707b;
        switch (i2) {
            case 0:
                ((JewelryVtoApplier.DownloadAndApplyCallback) obj).downloadProgress(d);
                break;
            case 1:
                ((VtoApplier.DownloadAndApplyCallback) obj).downloadProgress(d);
                break;
            case 2:
                ((NailVtoApplier.DownloadAndApplyCallback) obj).downloadProgress(d);
                break;
            case 3:
                ((SkuHandler.SyncServerCallback) obj).progress(d);
                break;
            case 4:
                ((ProgressCallback) obj).a(d);
                break;
            default:
                ((SkuHandler.DownloadProductsCallback) obj).progress(d);
                break;
        }
    }
}
