package com.networkbench.agent.impl.crash;

import android.os.Process;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.networkbench.agent.impl.util.ak;
import defpackage.o60;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ConcurrentLinkedQueue<f> f36645a = new ConcurrentLinkedQueue<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Thread.UncaughtExceptionHandler f36647c = null;
    private static final com.networkbench.agent.impl.c.e d = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile boolean f36646b = false;

    private static String a(Thread thread) {
        return thread.getClass().getName() + "[name=" + thread.getName() + ", id=" + thread.getId() + ", pid=" + Process.myPid() + "]";
    }

    private static void c() {
        com.networkbench.agent.impl.c.e eVar = d;
        eVar.a("start to regist tingyun crash handler");
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != null && (defaultUncaughtExceptionHandler instanceof a)) {
            eVar.a("The tingyun crash handler is already registered");
            return;
        }
        f36647c = defaultUncaughtExceptionHandler;
        Thread.setDefaultUncaughtExceptionHandler(a.a());
        eVar.a("Registered tingyun crash handler");
    }

    public static class a implements Thread.UncaughtExceptionHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static a f36648a = new a();

        private a() {
        }

        private void a(Thread thread, Throwable th) {
            if (d.f36647c != null) {
                d.d.f("execute user UncaughtExceptionHandler,handler class is ".concat(d.f36647c.getClass().getName()));
                d.f36647c.uncaughtException(thread, th);
            }
        }

        private boolean b() {
            return ak.g() == 1;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (d.f36646b) {
                d.d.f("crash is reporting,stop report new crash");
                return;
            }
            try {
                if (!b()) {
                    d.d.a("init failed ,set feature 0");
                    ak.b(0);
                }
            } catch (Throwable unused) {
                d.d.f("process error");
            }
            try {
                if (!com.networkbench.agent.impl.harvest.b.b.a().h()) {
                    a(thread, th);
                    return;
                }
            } catch (Throwable th2) {
                o60.C(th2, new StringBuilder("checkSwitchOfCrash error"), d.d);
            }
            c.f36636a = i.a();
            d.f36646b = true;
            try {
                com.networkbench.agent.impl.b.b.a().b().e();
                if (!d.f36645a.isEmpty()) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    synchronized (d.f36645a) {
                        try {
                            for (f fVar : d.f36645a) {
                                try {
                                    d.d.a("notify crash");
                                    fVar.notifyCrash(thread, th, jCurrentTimeMillis / 1000);
                                } catch (Throwable th3) {
                                    d.d.a("Failed to process an uncaught exception by " + fVar.toString(), th3);
                                    com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37290b, 0, true);
                                }
                            }
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                }
                try {
                    NBSApplicationStateMonitor.getInstance().saveSDKData();
                    Thread.sleep(500L);
                } catch (Throwable th5) {
                    th = th5;
                    d.d.a("Failed to saving a crash.", th);
                }
            } catch (Throwable th6) {
                try {
                    d.d.a("Failed to process a crash.", th6);
                    try {
                        NBSApplicationStateMonitor.getInstance().saveSDKData();
                        Thread.sleep(500L);
                    } catch (Throwable th7) {
                        th = th7;
                        d.d.a("Failed to saving a crash.", th);
                    }
                } finally {
                    try {
                        NBSApplicationStateMonitor.getInstance().saveSDKData();
                        Thread.sleep(500L);
                    } catch (Throwable th8) {
                        d.d.a("Failed to saving a crash.", th8);
                    }
                    a(thread, th);
                }
            }
        }

        public static a a() {
            return f36648a;
        }
    }

    public static void a(f fVar) {
        c();
        if (fVar != null) {
            f36645a.add(fVar);
        }
    }
}
