package com.networkbench.agent.impl.b;

import android.os.Looper;
import android.os.MessageQueue;
import android.util.Printer;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ad;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class h implements MessageQueue.IdleHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36504a = "LooperMonitor";
    private static int d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Printer f36508f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final h f36505b = new h();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36506c = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Set<a> f36507e = Collections.newSetFromMap(new ConcurrentHashMap());

    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f36512a = false;

        public boolean c() {
            return false;
        }

        public void d() {
            this.f36512a = true;
        }

        public void e() {
            this.f36512a = false;
        }
    }

    private h() {
        e();
        Looper.getMainLooper().getQueue().addIdleHandler(this);
    }

    public static boolean a(int i2) {
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            if (stackTrace == null || stackTrace.length <= i2 || !stackTrace[i2].getClassName().contains("networkbench") || !stackTrace[i2].getMethodName().equals("println")) {
                return false;
            }
            f36506c.a("isNetworkbenchPrintlnCrycle cycle stackElement:" + stackTrace[i2]);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void b(int i2) {
        Logger.debug(f36504a, "setStackInterval : " + i2);
        d = i2;
    }

    public static void c(a aVar) {
        Set<a> set = f36507e;
        synchronized (set) {
            set.remove(aVar);
        }
    }

    public static void d(a aVar) {
        Set<a> set = f36507e;
        synchronized (set) {
            set.remove(aVar);
        }
    }

    private static void e() {
        try {
            final Printer printer = (Printer) ad.a(Looper.getMainLooper(), "mLogging");
            Printer printer2 = f36508f;
            if (printer != printer2 || printer2 == null) {
                if (printer2 != null) {
                    f36506c.f("maybe looper printer was replace other!");
                }
                Looper mainLooper = Looper.getMainLooper();
                Printer printer3 = new Printer() { // from class: com.networkbench.agent.impl.b.h.1

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    boolean f36509a = false;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    boolean f36510b = false;

                    @Override // android.util.Printer
                    public void println(String str) {
                        try {
                            if (printer != null && h.a(3)) {
                                h.f36506c.a("isNetworkbenchPrintlnCrycle(3) return true");
                                return;
                            }
                            Printer printer4 = printer;
                            if (printer4 != null) {
                                printer4.println(str);
                            }
                            boolean z = true;
                            if (!this.f36509a) {
                                boolean z2 = str.charAt(0) == '>' || str.charAt(0) == '<';
                                this.f36510b = z2;
                                this.f36509a = true;
                                if (!z2) {
                                    h.f36506c.f("Printer is inValid! x:".concat(str));
                                }
                            }
                            if (this.f36510b) {
                                if (str.charAt(0) != '>') {
                                    z = false;
                                }
                                h.a(z);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                };
                f36508f = printer3;
                mainLooper.setMessageLogging(printer3);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.os.MessageQueue.IdleHandler
    public boolean queueIdle() {
        return true;
    }

    public static boolean c() {
        return d != 0;
    }

    public static void b(a aVar) {
        Set<a> set = f36507e;
        synchronized (set) {
            try {
                if (!set.contains(aVar)) {
                    set.add(aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean b() {
        return a() == -1;
    }

    public static void a(boolean z) {
        for (a aVar : f36507e) {
            if (aVar.c()) {
                boolean z2 = aVar.f36512a;
                if (z) {
                    if (!z2) {
                        aVar.d();
                    }
                } else if (z2) {
                    aVar.e();
                }
            } else if (!z && aVar.f36512a) {
                aVar.e();
            }
        }
    }

    public static void a(a aVar) {
        Set<a> set = f36507e;
        synchronized (set) {
            try {
                if (!set.contains(aVar)) {
                    set.add(aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static int a() {
        int i2 = d;
        if (i2 > 0 && i2 < 100) {
            d = 100;
        }
        if (d > 1000) {
            d = 1000;
        }
        return d;
    }
}
