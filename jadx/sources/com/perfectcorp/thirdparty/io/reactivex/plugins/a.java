package com.perfectcorp.thirdparty.io.reactivex.plugins;

import com.perfectcorp.common.rx.c;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.internal.util.e;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile c f43167a;

    public static void a(Throwable th) {
        c cVar = f43167a;
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else if (!(th instanceof com.perfectcorp.thirdparty.io.reactivex.exceptions.a) && !(th instanceof IllegalStateException) && !(th instanceof NullPointerException) && !(th instanceof IllegalArgumentException) && !(th instanceof CompositeException)) {
            th = new com.perfectcorp.thirdparty.io.reactivex.exceptions.c(th);
        }
        if (cVar != null) {
            try {
                cVar.accept(th);
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th2);
            }
        }
        th.printStackTrace();
        Thread threadCurrentThread2 = Thread.currentThread();
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }

    public static Scheduler b(Callable callable) {
        try {
            Scheduler scheduler = (Scheduler) callable.call();
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(scheduler, "Scheduler Callable result can't be null");
            return scheduler;
        } catch (Throwable th) {
            Throwable th2 = e.f43154a;
            throw th;
        }
    }
}
