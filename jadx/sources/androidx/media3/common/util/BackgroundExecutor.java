package androidx.media3.common.util;

import defpackage.to;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public abstract class BackgroundExecutor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ExecutorService f14134a;

    public static synchronized Executor a() {
        try {
            if (f14134a == null) {
                String str = Util.f14242a;
                f14134a = Executors.newSingleThreadExecutor(new to("ExoPlayer:BackgroundExecutor", 1));
            }
        } catch (Throwable th) {
            throw th;
        }
        return f14134a;
    }
}
