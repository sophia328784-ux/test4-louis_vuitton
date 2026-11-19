package com.google.firebase.messaging;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.threads.PoolableExecutors;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import defpackage.b5;
import defpackage.l8;
import defpackage.p3;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public abstract class EnhancedIntentService extends Service {
    static final long MESSAGE_TIMEOUT_S = 20;
    private static final String TAG = "EnhancedIntentService";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f35236b = 0;
    private Binder binder;
    private int lastStartId;
    final ExecutorService executor = PoolableExecutors.f35359b.a(new NamedThreadFactory("Firebase-Messaging-Intent-Handle"));
    private final Object lock = new Object();
    private int runningTasks = 0;

    /* JADX INFO: renamed from: com.google.firebase.messaging.EnhancedIntentService$1, reason: invalid class name */
    public class AnonymousClass1 implements WithinAppServiceBinder.IntentHandler {
        public AnonymousClass1() {
        }
    }

    public static Task access$000(EnhancedIntentService enhancedIntentService, Intent intent) {
        if (enhancedIntentService.handleIntentOnMainThread(intent)) {
            return Tasks.f(null);
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        enhancedIntentService.executor.execute(new b5(enhancedIntentService, intent, taskCompletionSource, 13));
        return taskCompletionSource.f32085a;
    }

    public final void a(Intent intent) {
        if (intent != null) {
            WakeLockHolder.b(intent);
        }
        synchronized (this.lock) {
            try {
                int i2 = this.runningTasks - 1;
                this.runningTasks = i2;
                if (i2 == 0) {
                    stopSelfResultHook(this.lastStartId);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Intent getStartCommandIntent(Intent intent) {
        return intent;
    }

    public abstract void handleIntent(Intent intent);

    public boolean handleIntentOnMainThread(Intent intent) {
        return false;
    }

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        try {
            Log.isLoggable(TAG, 3);
            if (this.binder == null) {
                this.binder = new WithinAppServiceBinder(new AnonymousClass1());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.binder;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.executor.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        Task taskF;
        PushAutoTrackHelper.onServiceStartCommand(this, intent, i2, i3);
        synchronized (this.lock) {
            this.lastStartId = i3;
            this.runningTasks++;
        }
        Intent startCommandIntent = getStartCommandIntent(intent);
        if (startCommandIntent == null) {
            a(intent);
            return 2;
        }
        if (handleIntentOnMainThread(startCommandIntent)) {
            taskF = Tasks.f(null);
        } else {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.executor.execute(new b5(this, startCommandIntent, taskCompletionSource, 13));
            taskF = taskCompletionSource.f32085a;
        }
        if (taskF.k()) {
            a(intent);
            return 2;
        }
        taskF.b(new l8(1), new p3(this, intent, 11));
        return 3;
    }

    public boolean stopSelfResultHook(int i2) {
        return stopSelfResult(i2);
    }
}
