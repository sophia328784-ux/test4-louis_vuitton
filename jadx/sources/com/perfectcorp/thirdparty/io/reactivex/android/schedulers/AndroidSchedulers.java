package com.perfectcorp.thirdparty.io.reactivex.android.schedulers;

import android.os.Handler;
import android.os.Looper;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.internal.util.e;
import defpackage.r81;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AndroidSchedulers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Scheduler f42587a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Scheduler f42588a = new b(new Handler(Looper.getMainLooper()));
    }

    static {
        try {
            Scheduler schedulerCall = new com.perfectcorp.thirdparty.io.reactivex.android.schedulers.a().call();
            if (schedulerCall == null) {
                throw new NullPointerException("Scheduler Callable returned null");
            }
            f42587a = schedulerCall;
        } catch (Throwable th) {
            Throwable th2 = e.f43154a;
            throw th;
        }
    }

    public static Scheduler a() {
        Scheduler scheduler = f42587a;
        if (scheduler != null) {
            return scheduler;
        }
        r81.d("scheduler == null");
        return null;
    }
}
