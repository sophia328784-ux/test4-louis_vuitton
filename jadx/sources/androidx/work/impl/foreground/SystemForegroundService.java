package androidx.work.impl.foreground;

import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.lifecycle.LifecycleService;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class SystemForegroundService extends LifecycleService implements SystemForegroundDispatcher.Callback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f20480c;
    public SystemForegroundDispatcher d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public NotificationManager f20481e;

    static {
        Logger.b("SystemFgService");
    }

    public final void a(int i2) {
        this.f20481e.cancel(i2);
    }

    public final void b() {
        this.f20481e = (NotificationManager) getApplicationContext().getSystemService("notification");
        SystemForegroundDispatcher systemForegroundDispatcher = new SystemForegroundDispatcher(getApplicationContext());
        this.d = systemForegroundDispatcher;
        if (systemForegroundDispatcher.f20479j != null) {
            Logger.a().getClass();
        } else {
            systemForegroundDispatcher.f20479j = this;
        }
    }

    public final void c(int i2, Notification notification, int i3) {
        if (Build.VERSION.SDK_INT < 31) {
            startForeground(i2, notification, i3);
            return;
        }
        try {
            startForeground(i2, notification, i3);
        } catch (ForegroundServiceStartNotAllowedException unused) {
            Logger.a().getClass();
        } catch (SecurityException unused2) {
            Logger.a().getClass();
        }
    }

    public final void d(int i2) {
        this.f20480c = true;
        Logger.a().getClass();
        stopForeground(true);
        stopSelf(i2);
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onCreate() {
        super.onCreate();
        b();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.d.d();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        super.onStartCommand(intent, i2, i3);
        if (this.f20480c) {
            Logger.a().getClass();
            this.d.d();
            b();
            this.f20480c = false;
        }
        if (intent == null) {
            return 3;
        }
        final SystemForegroundDispatcher systemForegroundDispatcher = this.d;
        systemForegroundDispatcher.getClass();
        int i4 = SystemForegroundDispatcher.f20472k;
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            Logger loggerA = Logger.a();
            intent.toString();
            loggerA.getClass();
            final String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
            systemForegroundDispatcher.f20474c.d(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundDispatcher.1
                final /* synthetic */ String val$workSpecId;

                public AnonymousClass1() {
                    str = stringExtra;
                }

                @Override // java.lang.Runnable
                public void run() {
                    WorkSpec workSpec;
                    Processor processor = SystemForegroundDispatcher.this.f20473b.g;
                    String str = str;
                    synchronized (processor.f20317k) {
                        try {
                            WorkerWrapper workerWrapperD = processor.d(str);
                            workSpec = workerWrapperD != null ? workerWrapperD.f20354a : null;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (workSpec == null || Intrinsics.c(Constraints.f20225j, workSpec.f20517j)) {
                        return;
                    }
                    synchronized (SystemForegroundDispatcher.this.d) {
                        SystemForegroundDispatcher.this.g.put(WorkSpecKt.a(workSpec), workSpec);
                        SystemForegroundDispatcher systemForegroundDispatcher2 = SystemForegroundDispatcher.this;
                        SystemForegroundDispatcher.this.f20477h.put(WorkSpecKt.a(workSpec), WorkConstraintsTrackerKt.a(systemForegroundDispatcher2.f20478i, workSpec, systemForegroundDispatcher2.f20474c.b(), SystemForegroundDispatcher.this));
                    }
                }
            });
            systemForegroundDispatcher.b(intent);
            return 3;
        }
        if ("ACTION_NOTIFY".equals(action)) {
            systemForegroundDispatcher.b(intent);
            return 3;
        }
        if (!"ACTION_CANCEL_WORK".equals(action)) {
            if (!"ACTION_STOP_FOREGROUND".equals(action)) {
                return 3;
            }
            Logger.a().getClass();
            SystemForegroundService systemForegroundService = systemForegroundDispatcher.f20479j;
            if (systemForegroundService == null) {
                return 3;
            }
            systemForegroundService.d(i3);
            return 3;
        }
        Logger loggerA2 = Logger.a();
        intent.toString();
        loggerA2.getClass();
        String stringExtra2 = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra2 == null || TextUtils.isEmpty(stringExtra2)) {
            return 3;
        }
        systemForegroundDispatcher.f20473b.a(UUID.fromString(stringExtra2));
        return 3;
    }

    @Override // android.app.Service
    public final void onTimeout(int i2) {
        if (Build.VERSION.SDK_INT >= 35) {
            return;
        }
        this.d.f(i2, 2048);
    }

    public final void onTimeout(int i2, int i3) {
        this.d.f(i2, i3);
    }
}
