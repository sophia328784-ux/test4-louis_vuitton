package defpackage;

import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class t71 implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f79996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f79997c;

    public /* synthetic */ t71(String str, boolean z) {
        this.f79996b = str;
        this.f79997c = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        TimeZone timeZone = _UtilJvmKt.f77018a;
        Thread thread = new Thread(runnable, this.f79996b);
        thread.setDaemon(this.f79997c);
        return thread;
    }
}
