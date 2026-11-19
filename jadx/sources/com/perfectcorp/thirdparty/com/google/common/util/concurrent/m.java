package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public final class m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Logger f42432c = Logger.getLogger(m.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f42433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f42434b;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Runnable f42435a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Executor f42436b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public a f42437c;

        public a(Runnable runnable, Executor executor, a aVar) {
            this.f42435a = runnable;
            this.f42436b = executor;
            this.f42437c = aVar;
        }
    }

    public static void a(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            f42432c.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }
}
