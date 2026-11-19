package com.dynatrace.android.agent.crash;

import android.os.Process;
import com.dynatrace.android.agent.CrashReporter;
import com.dynatrace.android.agent.Dynatrace;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.util.Utility;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class CrashCatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile boolean f27442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final CopyOnWriteArrayList f27443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Thread.UncaughtExceptionHandler f27444c;
    public static Throwable d;

    public static class DTXAgentUncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DTXAgentUncaughtExceptionHandler f27445a = new DTXAgentUncaughtExceptionHandler();

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th) {
            if (Global.f27307a) {
                String.format("Uncaught exception occurred in %s[name=%s, id=%d, pid=%d]", thread.getClass().getName(), thread.getName(), Long.valueOf(Utility.f(thread)), Integer.valueOf(Process.myPid()));
                boolean z = CrashCatcher.f27442a;
                Utility.g();
            }
            if (CrashCatcher.d != th) {
                CrashCatcher.d = th;
                int i2 = CrashReporter.f27289c;
                if (Dynatrace.c()) {
                    for (CrashListener crashListener : CrashCatcher.f27443b) {
                        try {
                            crashListener.b(thread, th);
                        } catch (Throwable unused) {
                            if (Global.f27307a) {
                                crashListener.toString();
                                Utility.g();
                            }
                        }
                    }
                } else if (Global.f27307a) {
                    Utility.g();
                }
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = CrashCatcher.f27444c;
            if (uncaughtExceptionHandler != null) {
                if (Global.f27307a) {
                    Utility.g();
                }
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        }
    }

    static {
        boolean z = Global.f27307a;
        f27442a = false;
        f27443b = new CopyOnWriteArrayList();
        f27444c = null;
        d = null;
    }

    public static void a() {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != null && (defaultUncaughtExceptionHandler instanceof DTXAgentUncaughtExceptionHandler)) {
            if (Global.f27307a) {
                Utility.n("The agent crash handler is already registered.");
            }
        } else {
            f27444c = defaultUncaughtExceptionHandler;
            Thread.setDefaultUncaughtExceptionHandler(DTXAgentUncaughtExceptionHandler.f27445a);
            if (Global.f27307a) {
                Utility.n("Registered agent crash handler");
            }
            f27442a = true;
        }
    }

    public static void b(String str, String str2, String str3, String str4) {
        if (!Dynatrace.c()) {
            if (Global.f27307a) {
                Utility.g();
                return;
            }
            return;
        }
        for (CrashListener crashListener : f27443b) {
            try {
                crashListener.a();
            } catch (Throwable unused) {
                if (Global.f27307a) {
                    crashListener.toString();
                    Utility.g();
                }
            }
        }
    }
}
