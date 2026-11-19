package defpackage;

import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.hc.preferences.LookHandlerPreferences;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.kernelctrl.sku.h;
import com.perfectcorp.perfectlib.ph.unit.sku.a;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$f;
import com.perfectcorp.perfectlib.ymk.utility.SettingHelper;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class va0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f80542c;

    public /* synthetic */ va0(DownloadTaskCancelable downloadTaskCancelable, int i2) {
        this.f80541b = i2;
        this.f80542c = downloadTaskCancelable;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f80541b;
        DownloadTaskCancelable downloadTaskCancelable = this.f80542c;
        switch (i2) {
            case 0:
                downloadTaskCancelable.c();
                return SettingHelper.c() ? LookHandler.clearAllCompletable() : g.f42660b;
            case 1:
                downloadTaskCancelable.c();
                return new m(new c$f(LookHandlerPreferences.f40326a.getString("LOOK_LIST_MESSAGE_DIGEST", ""), false).c(), new v40(15));
            case 2:
                return h.e() ? a.b(downloadTaskCancelable, false) : g.f42660b;
            case 3:
                downloadTaskCancelable.c();
                return SettingHelper.e() ? SkuHandler.clearAllCompletable() : g.f42660b;
            default:
                return h.e() ? a.b(downloadTaskCancelable, true) : g.f42660b;
        }
    }
}
