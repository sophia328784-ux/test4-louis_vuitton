package defpackage;

import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class xy0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f81226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f81227b;

    public /* synthetic */ xy0(DownloadTaskCancelable downloadTaskCancelable, int i2) {
        this.f81226a = i2;
        this.f81227b = downloadTaskCancelable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f81226a;
        DownloadTaskCancelable downloadTaskCancelable = this.f81227b;
        Disposable disposable = (Disposable) obj;
        switch (i2) {
            case 0:
                downloadTaskCancelable.b(disposable);
                break;
            case 1:
                downloadTaskCancelable.b(disposable);
                break;
            default:
                downloadTaskCancelable.b(disposable);
                break;
        }
    }
}
