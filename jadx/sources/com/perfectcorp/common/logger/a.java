package com.perfectcorp.common.logger;

import android.os.Process;
import android.os.SystemClock;
import com.perfectcorp.common.utility.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Objects;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements Log.b {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ThreadLocal f39269j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ThreadLocal f39270k = new c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final File f39273e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final File f39274f;
    public final ScheduledThreadPoolExecutor g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f39271b = 6;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f39272c = SystemClock.elapsedRealtime();
    public final AtomicInteger d = new AtomicInteger(0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public BufferedWriter f39275h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ScheduledFuture f39276i = null;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX INFO: renamed from: com.perfectcorp.common.logger.a$a, reason: collision with other inner class name */
    public static final class EnumC0121a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int f39282h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final int f39283i;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static EnumC0121a f39278b = new EnumC0121a("S", 0, 0, 2);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static EnumC0121a f39279c = new EnumC0121a("V", 1, 1, 2);
        private static EnumC0121a d = new EnumC0121a("D", 2, -2, 3);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static EnumC0121a f39280e = new EnumC0121a("I", 3, 2, 4);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static EnumC0121a f39281f = new EnumC0121a("W", 4, 3, 5);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EnumC0121a f39277a = new EnumC0121a("E", 5, 4, 6);
        private static EnumC0121a g = new EnumC0121a("N", 6, -99, 0);

        public EnumC0121a(String str, int i2, int i3, int i4) {
            super(str, i2);
            this.f39282h = i3;
            this.f39283i = i4;
        }

        public static EnumC0121a b(int i2) {
            switch (i2) {
                case 2:
                    return f39279c;
                case 3:
                    return d;
                case 4:
                    return f39280e;
                case 5:
                    return f39281f;
                case 6:
                case 7:
                    return f39277a;
                default:
                    return f39279c;
            }
        }
    }

    public a(File file, File file2) {
        Objects.requireNonNull(file);
        this.f39273e = file;
        this.f39274f = file2;
        d dVar = new d();
        dVar.f39284b = this;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, dVar, new ThreadPoolExecutor.DiscardPolicy());
        this.g = scheduledThreadPoolExecutor;
        scheduledThreadPoolExecutor.execute(new e(this));
    }

    @Override // com.perfectcorp.common.utility.Log.b
    public final int a(int i2, String str, String str2) {
        b(EnumC0121a.b(i2), str, str2);
        return 0;
    }

    public final void b(EnumC0121a enumC0121a, String str, String str2) {
        if (this.f39273e != null && enumC0121a.f39283i >= this.f39271b) {
            this.g.execute(new g(this, SystemClock.elapsedRealtime() - this.f39272c, Process.myPid(), Process.myTid(), new Date(), enumC0121a, str, str2));
        }
    }

    public final void c() {
        this.g.execute(new f(this));
    }

    public final void finalize() throws Throwable {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.g;
        try {
            BufferedWriter bufferedWriter = this.f39275h;
            if (bufferedWriter != null) {
                try {
                    bufferedWriter.flush();
                } catch (IOException unused) {
                }
                try {
                    this.f39275h.close();
                } catch (IOException unused2) {
                }
                this.f39275h = null;
            }
            if (!scheduledThreadPoolExecutor.isShutdown()) {
                scheduledThreadPoolExecutor.shutdown();
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.perfectcorp.common.utility.Log.b
    public final int a(String str, String str2, Throwable th) {
        b(EnumC0121a.f39277a, str, str2);
        return 0;
    }
}
