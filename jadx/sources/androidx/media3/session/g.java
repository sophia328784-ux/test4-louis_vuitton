package androidx.media3.session;

import androidx.media3.common.util.Util;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17661c;

    public /* synthetic */ g(Object obj, int i2) {
        this.f17660b = i2;
        this.f17661c = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i2 = this.f17660b;
        Object obj = this.f17661c;
        switch (i2) {
            case 0:
                Util.W(((MediaControllerHolder) obj).f17325b, runnable);
                break;
            case 1:
                Util.W(((MediaNotificationManager) obj).f17387e, runnable);
                break;
            default:
                Util.W(((MediaSessionImpl) obj).l, runnable);
                break;
        }
    }
}
