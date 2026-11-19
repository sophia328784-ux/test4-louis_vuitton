package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class iy0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f71233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SkuHandler.CheckNeedToUpdateWithGuidsCallback f71234b;

    public /* synthetic */ iy0(SkuHandler.CheckNeedToUpdateWithGuidsCallback checkNeedToUpdateWithGuidsCallback, int i2) {
        this.f71233a = i2;
        this.f71234b = checkNeedToUpdateWithGuidsCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        Throwable th = (Throwable) obj;
        switch (this.f71233a) {
            case 0:
                Log.e("SkuHandler", "[checkNeedToUpdateWithSkuSetGuids] failed", th);
                this.f71234b.onFailure(th);
                break;
            default:
                Log.e("SkuHandler", "[checkNeedToUpdateWithGuids] failed", th);
                this.f71234b.onFailure(th);
                break;
        }
    }
}
