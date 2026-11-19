package defpackage;

import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.kernelctrl.sku.h;
import com.perfectcorp.perfectlib.ph.unit.sku.a;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ky0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PerfectEffect f75897c;
    public final /* synthetic */ DownloadTaskCancelable d;

    public /* synthetic */ ky0(PerfectEffect perfectEffect, DownloadTaskCancelable downloadTaskCancelable, int i2) {
        this.f75896b = i2;
        this.f75897c = perfectEffect;
        this.d = downloadTaskCancelable;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f75896b;
        DownloadTaskCancelable downloadTaskCancelable = this.d;
        PerfectEffect perfectEffect = this.f75897c;
        switch (i2) {
            case 0:
                return (h.e() && h.c(perfectEffect.beautyMode)) ? a.b(downloadTaskCancelable, false) : g.f42660b;
            default:
                return (h.e() && h.c(perfectEffect.beautyMode)) ? a.b(downloadTaskCancelable, true) : g.f42660b;
        }
    }
}
