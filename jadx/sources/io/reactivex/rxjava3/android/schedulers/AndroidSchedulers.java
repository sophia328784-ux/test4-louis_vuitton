package io.reactivex.rxjava3.android.schedulers;

import android.os.Handler;
import android.os.Looper;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AndroidSchedulers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Scheduler f70017a;

    public static final class MainHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Scheduler f70018a;

        static {
            Looper mainLooper = Looper.getMainLooper();
            Scheduler scheduler = AndroidSchedulers.f70017a;
            f70018a = new HandlerScheduler(new Handler(mainLooper));
        }
    }

    static {
        try {
            Scheduler scheduler = (Scheduler) new a().call();
            if (scheduler == null) {
                throw new NullPointerException("Scheduler Callable returned null");
            }
            f70017a = scheduler;
        } catch (Throwable th) {
            throw ExceptionHelper.e(th);
        }
    }
}
