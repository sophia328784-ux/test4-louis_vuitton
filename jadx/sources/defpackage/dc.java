package defpackage;

import android.os.Handler;
import android.view.Choreographer;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dc implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68542c;

    public /* synthetic */ dc(Object obj, int i2) {
        this.f68541b = i2;
        this.f68542c = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i2 = this.f68541b;
        Object obj = this.f68542c;
        switch (i2) {
            case 0:
                ((Handler) obj).post(runnable);
                break;
            case 1:
                ((Handler) obj).post(runnable);
                break;
            default:
                ((Choreographer) obj).postFrameCallback(new o6(runnable, 1));
                break;
        }
    }
}
