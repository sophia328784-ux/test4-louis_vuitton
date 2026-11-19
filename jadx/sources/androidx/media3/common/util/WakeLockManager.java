package androidx.media3.common.util;

import android.content.Context;
import android.os.Looper;
import android.os.PowerManager;
import defpackage.w21;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class WakeLockManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WakeLockManagerInternal f14251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HandlerWrapper f14252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HandlerWrapper f14253c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f14254e;

    public static final class WakeLockManagerInternal {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f14255a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public PowerManager.WakeLock f14256b;

        public WakeLockManagerInternal(Context context) {
            this.f14255a = context;
        }

        public static void a(WakeLockManagerInternal wakeLockManagerInternal, boolean z, boolean z2) {
            synchronized (wakeLockManagerInternal) {
                boolean z3 = false;
                if (z) {
                    if (wakeLockManagerInternal.f14256b == null) {
                        if (wakeLockManagerInternal.f14255a.checkSelfPermission("android.permission.WAKE_LOCK") != 0) {
                            Log.g("WAKE_LOCK permission not granted, can't acquire wake lock for playback");
                            return;
                        }
                        PowerManager powerManager = (PowerManager) wakeLockManagerInternal.f14255a.getSystemService("power");
                        if (powerManager == null) {
                            Log.g("PowerManager is null, therefore not creating the WakeLock.");
                            return;
                        } else {
                            PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
                            wakeLockManagerInternal.f14256b = wakeLockNewWakeLock;
                            wakeLockNewWakeLock.setReferenceCounted(false);
                        }
                    }
                }
                PowerManager.WakeLock wakeLock = wakeLockManagerInternal.f14256b;
                if (wakeLock == null) {
                    return;
                }
                if (z && z2) {
                    z3 = true;
                }
                if (z3) {
                    wakeLock.acquire();
                } else {
                    wakeLock.release();
                }
            }
        }
    }

    public WakeLockManager(Context context, Looper looper, Clock clock) {
        this.f14251a = new WakeLockManagerInternal(context.getApplicationContext());
        this.f14252b = clock.e(looper, null);
        this.f14253c = clock.e(Looper.getMainLooper(), null);
    }

    public final void a(final boolean z, final boolean z2) {
        HandlerWrapper handlerWrapper = this.f14252b;
        if (z && z2) {
            handlerWrapper.k(new Runnable() { // from class: androidx.media3.common.util.e
                @Override // java.lang.Runnable
                public final void run() {
                    WakeLockManager.WakeLockManagerInternal.a(this.f14267b.f14251a, z, z2);
                }
            });
            return;
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        this.f14253c.e(new w21(this, atomicBoolean, 18));
        handlerWrapper.k(new Runnable() { // from class: androidx.media3.common.util.f
            @Override // java.lang.Runnable
            public final void run() {
                atomicBoolean.set(false);
                WakeLockManager.WakeLockManagerInternal.a(this.f14269b.f14251a, z, z2);
            }
        });
    }

    public final void b(boolean z) {
        if (this.f14254e == z) {
            return;
        }
        this.f14254e = z;
        if (this.d) {
            a(true, z);
        }
    }
}
