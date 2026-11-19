package defpackage;

import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class er0 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f68926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f68927b;

    public /* synthetic */ er0(DownloadTaskCancelable downloadTaskCancelable, int i2) {
        this.f68926a = i2;
        this.f68927b = downloadTaskCancelable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() throws Throwable {
        int i2 = this.f68926a;
        this.f68927b.cancel();
    }
}
