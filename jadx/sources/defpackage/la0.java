package defpackage;

import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import java.io.File;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class la0 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f75984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f75985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f75986c;

    public /* synthetic */ la0(Object obj, Object obj2, int i2) {
        this.f75984a = i2;
        this.f75985b = obj;
        this.f75986c = obj2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() {
        int i2 = this.f75984a;
        Object obj = this.f75986c;
        Object obj2 = this.f75985b;
        switch (i2) {
            case 0:
                DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) obj;
                AtomicReference atomicReference = ((LookHandler) obj2).d;
                while (!atomicReference.compareAndSet(downloadTaskCancelable, null) && atomicReference.get() == downloadTaskCancelable) {
                }
                break;
            default:
                FileUtils.c((File) obj2);
                FileUtils.c((File) obj);
                break;
        }
    }
}
