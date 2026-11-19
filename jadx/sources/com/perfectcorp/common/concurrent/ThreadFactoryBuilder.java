package com.perfectcorp.common.concurrent;

import android.os.Process;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes3.dex */
public final class ThreadFactoryBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f39170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f39171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f39172c;
    public int d = 0;

    public static final class b implements ThreadFactory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f39175b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f39176c;
        public final NamedThreadFactory d;

        public b(ThreadFactoryBuilder threadFactoryBuilder) {
            this.f39175b = threadFactoryBuilder.f39172c;
            this.f39176c = threadFactoryBuilder.d;
            boolean z = threadFactoryBuilder.f39171b;
            String str = threadFactoryBuilder.f39170a;
            this.d = z ? new c(str) : new d(str);
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            if (this.f39175b) {
                runnable = new a(runnable, this.f39176c, (byte) 0);
            }
            return this.d.newThread(runnable);
        }
    }

    public final ThreadFactory a() {
        return new b(this);
    }

    public static final class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Runnable f39173a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f39174b;

        private a(Runnable runnable, int i2) {
            this.f39173a = runnable;
            this.f39174b = i2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Process.setThreadPriority(this.f39174b);
            this.f39173a.run();
        }

        public /* synthetic */ a(Runnable runnable, int i2, byte b2) {
            this(runnable, i2);
        }
    }
}
