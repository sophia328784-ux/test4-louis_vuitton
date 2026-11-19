package defpackage;

import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class cc0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MakeupCam.CreateCallback f21122b;

    public /* synthetic */ cc0(MakeupCam.CreateCallback createCallback, int i2) {
        this.f21121a = i2;
        this.f21122b = createCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f21121a;
        MakeupCam.CreateCallback createCallback = this.f21122b;
        switch (i2) {
            case 0:
                createCallback.onSuccess((MakeupCam) obj);
                break;
            default:
                createCallback.onFailure((Throwable) obj);
                break;
        }
    }
}
