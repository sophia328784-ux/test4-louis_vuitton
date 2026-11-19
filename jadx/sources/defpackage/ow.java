package defpackage;

import androidx.media3.common.util.HandlerWrapper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ow implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HandlerWrapper f78671c;

    public /* synthetic */ ow(HandlerWrapper handlerWrapper, int i2) {
        this.f78670b = i2;
        this.f78671c = handlerWrapper;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i2 = this.f78670b;
        this.f78671c.k(runnable);
    }
}
