package androidx.work.impl;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.core.content.ContextCompat;
import androidx.work.Configuration;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.foreground.SystemForegroundService;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
public class Processor implements ForegroundProcessor {
    public static final /* synthetic */ int l = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f20310b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Configuration f20311c;
    public final TaskExecutor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WorkDatabase f20312e;
    public final HashMap g = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashMap f20313f = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashSet f20315i = new HashSet();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f20316j = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public PowerManager.WakeLock f20309a = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f20317k = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap f20314h = new HashMap();

    static {
        Logger.b("Processor");
    }

    public Processor(Context context, Configuration configuration, TaskExecutor taskExecutor, WorkDatabase workDatabase) {
        this.f20310b = context;
        this.f20311c = configuration;
        this.d = taskExecutor;
        this.f20312e = workDatabase;
    }

    public static boolean e(String str, WorkerWrapper workerWrapper, int i2) {
        if (workerWrapper == null) {
            Logger.a().getClass();
            return false;
        }
        workerWrapper.m.cancel((CancellationException) new WorkerStoppedException(i2));
        Logger.a().getClass();
        return true;
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public final void a(String str, ForegroundInfo foregroundInfo) {
        synchronized (this.f20317k) {
            try {
                Logger.a().getClass();
                WorkerWrapper workerWrapper = (WorkerWrapper) this.g.remove(str);
                if (workerWrapper != null) {
                    if (this.f20309a == null) {
                        PowerManager.WakeLock wakeLockA = WakeLocks.a(this.f20310b);
                        this.f20309a = wakeLockA;
                        wakeLockA.acquire();
                    }
                    this.f20313f.put(str, workerWrapper);
                    ContextCompat.startForegroundService(this.f20310b, SystemForegroundDispatcher.a(this.f20310b, WorkSpecKt.a(workerWrapper.f20354a), foregroundInfo));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(ExecutionListener executionListener) {
        synchronized (this.f20317k) {
            this.f20316j.add(executionListener);
        }
    }

    public final WorkerWrapper c(String str) {
        WorkerWrapper workerWrapper = (WorkerWrapper) this.f20313f.remove(str);
        boolean z = workerWrapper != null;
        if (!z) {
            workerWrapper = (WorkerWrapper) this.g.remove(str);
        }
        this.f20314h.remove(str);
        if (z) {
            synchronized (this.f20317k) {
                try {
                    if (this.f20313f.isEmpty()) {
                        Context context = this.f20310b;
                        int i2 = SystemForegroundDispatcher.f20472k;
                        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
                        intent.setAction("ACTION_STOP_FOREGROUND");
                        try {
                            this.f20310b.startService(intent);
                        } catch (Throwable unused) {
                            Logger.a().getClass();
                        }
                        PowerManager.WakeLock wakeLock = this.f20309a;
                        if (wakeLock != null) {
                            wakeLock.release();
                            this.f20309a = null;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return workerWrapper;
    }

    public final WorkerWrapper d(String str) {
        WorkerWrapper workerWrapper = (WorkerWrapper) this.f20313f.get(str);
        return workerWrapper == null ? (WorkerWrapper) this.g.get(str) : workerWrapper;
    }
}
