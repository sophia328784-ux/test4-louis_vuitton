package defpackage;

import androidx.media3.common.util.Util;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class to implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f80119c;

    public /* synthetic */ to(String str, int i2) {
        this.f80118b = i2;
        this.f80119c = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int i2 = this.f80118b;
        String str = this.f80119c;
        switch (i2) {
            case 0:
                Thread thread = new Thread(runnable, str);
                thread.setPriority(10);
                return thread;
            default:
                String str2 = Util.f14242a;
                return new Thread(runnable, str);
        }
    }
}
