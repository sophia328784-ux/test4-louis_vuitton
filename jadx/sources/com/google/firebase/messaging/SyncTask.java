package com.google.firebase.messaging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class SyncTask implements Runnable {
    private final FirebaseMessaging firebaseMessaging;
    private final long nextDelaySeconds;
    ExecutorService processorExecutor = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory("firebase-iid-executor"));
    private final PowerManager.WakeLock syncWakeLock;

    public static class ConnectivityChangeReceiver extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SyncTask f35288a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Context f35289b;

        public ConnectivityChangeReceiver(SyncTask syncTask) {
            this.f35288a = syncTask;
        }

        public final void a() {
            SyncTask.isDebugLogEnabled();
            IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
            SyncTask syncTask = this.f35288a;
            if (syncTask != null) {
                Context context = syncTask.getContext();
                this.f35289b = context;
                context.registerReceiver(this, intentFilter);
            }
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            SyncTask syncTask = this.f35288a;
            if (syncTask != null && syncTask.isDeviceConnected()) {
                SyncTask.isDebugLogEnabled();
                FirebaseMessaging firebaseMessaging = this.f35288a.firebaseMessaging;
                SyncTask syncTask2 = this.f35288a;
                firebaseMessaging.getClass();
                FirebaseMessaging.b(0L, syncTask2);
                Context context2 = this.f35289b;
                if (context2 != null) {
                    context2.unregisterReceiver(this);
                }
                this.f35288a = null;
            }
        }
    }

    public SyncTask(FirebaseMessaging firebaseMessaging, long j2) {
        this.firebaseMessaging = firebaseMessaging;
        this.nextDelaySeconds = j2;
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) getContext().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.syncWakeLock = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
    }

    public static boolean isDebugLogEnabled() {
        return Log.isLoggable("FirebaseMessaging", 3);
    }

    public Context getContext() {
        return this.firebaseMessaging.f35244c;
    }

    public boolean isDeviceConnected() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public boolean maybeRefreshToken() throws IOException {
        try {
            if (this.firebaseMessaging.a() != null) {
                Log.isLoggable("FirebaseMessaging", 3);
                return true;
            }
        } catch (IOException e2) {
            String message = e2.getMessage();
            if ("SERVICE_NOT_AVAILABLE".equals(message) || "INTERNAL_SERVER_ERROR".equals(message) || "InternalServerError".equals(message)) {
                e2.getMessage();
                return false;
            }
            if (e2.getMessage() != null) {
                throw e2;
            }
        } catch (SecurityException unused) {
        }
        return false;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ServiceStarter.a().c(getContext())) {
            this.syncWakeLock.acquire();
        }
        try {
            try {
                FirebaseMessaging firebaseMessaging = this.firebaseMessaging;
                synchronized (firebaseMessaging) {
                    firebaseMessaging.l = true;
                }
                if (!this.firebaseMessaging.f35249j.d()) {
                    FirebaseMessaging firebaseMessaging2 = this.firebaseMessaging;
                    synchronized (firebaseMessaging2) {
                        firebaseMessaging2.l = false;
                    }
                    if (!ServiceStarter.a().c(getContext())) {
                        return;
                    }
                } else if (!ServiceStarter.a().b(getContext()) || isDeviceConnected()) {
                    boolean zMaybeRefreshToken = maybeRefreshToken();
                    FirebaseMessaging firebaseMessaging3 = this.firebaseMessaging;
                    if (zMaybeRefreshToken) {
                        synchronized (firebaseMessaging3) {
                            firebaseMessaging3.l = false;
                        }
                    } else {
                        firebaseMessaging3.j(this.nextDelaySeconds);
                    }
                    if (!ServiceStarter.a().c(getContext())) {
                        return;
                    }
                } else {
                    new ConnectivityChangeReceiver(this).a();
                    if (!ServiceStarter.a().c(getContext())) {
                        return;
                    }
                }
                this.syncWakeLock.release();
            } catch (IOException e2) {
                e2.getMessage();
                FirebaseMessaging firebaseMessaging4 = this.firebaseMessaging;
                synchronized (firebaseMessaging4) {
                    firebaseMessaging4.l = false;
                    if (ServiceStarter.a().c(getContext())) {
                        this.syncWakeLock.release();
                    }
                }
            }
        } catch (Throwable th) {
            if (ServiceStarter.a().c(getContext())) {
                this.syncWakeLock.release();
            }
            throw th;
        }
    }
}
