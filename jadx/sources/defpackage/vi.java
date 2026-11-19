package defpackage;

import androidx.camera.core.CameraExecutor;
import androidx.camera.core.Logger;
import com.appsflyer.internal.AFc1aSDK;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vi implements RejectedExecutionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f80587a;

    public /* synthetic */ vi(int i2) {
        this.f80587a = i2;
    }

    @Override // java.util.concurrent.RejectedExecutionHandler
    public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        switch (this.f80587a) {
            case 0:
                ThreadFactory threadFactory = CameraExecutor.d;
                Logger.a("CameraExecutor");
                break;
            default:
                AFc1aSDK.AFLogger(runnable, threadPoolExecutor);
                break;
        }
    }
}
