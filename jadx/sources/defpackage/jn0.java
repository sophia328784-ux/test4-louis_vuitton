package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.PerfectLib;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task.InitResponse;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class jn0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f71437a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SettableFuture f71438b;

    public /* synthetic */ jn0(SettableFuture settableFuture, int i2) {
        this.f71437a = i2;
        this.f71438b = settableFuture;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f71437a;
        SettableFuture settableFuture = this.f71438b;
        switch (i2) {
            case 0:
                Throwable th = (Throwable) obj;
                PerfectLib.f39745j = PerfectLib.State.RELEASED;
                Log.e("PerfectLib", "SDK init failed.", th);
                settableFuture.setException(th);
                break;
            case 1:
                Object obj2 = a.f42002c;
                Log.g(3, "SDKInitHandler", "[startInit] Init end.");
                settableFuture.set((InitResponse) obj);
                break;
            default:
                Throwable th2 = (Throwable) obj;
                Object obj3 = a.f42002c;
                Log.e("SDKInitHandler", "[startInit] Init failed.", th2);
                settableFuture.setException(th2);
                break;
        }
    }
}
