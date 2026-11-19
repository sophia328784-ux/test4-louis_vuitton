package com.batch.android.d;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f23036a = "android.support.content.wakelockid";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final SparseArray<PowerManager.WakeLock> f23037b = new SparseArray<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f23038c = 1;

    public static boolean completeWakefulIntent(Intent intent) {
        int intExtra;
        if (intent == null || (intExtra = intent.getIntExtra(f23036a, 0)) == 0) {
            return false;
        }
        SparseArray<PowerManager.WakeLock> sparseArray = f23037b;
        synchronized (sparseArray) {
            try {
                PowerManager.WakeLock wakeLock = sparseArray.get(intExtra);
                if (wakeLock == null) {
                    return true;
                }
                wakeLock.release();
                sparseArray.remove(intExtra);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ComponentName startWakefulService(Context context, Intent intent) {
        SparseArray<PowerManager.WakeLock> sparseArray = f23037b;
        synchronized (sparseArray) {
            try {
                int i2 = f23038c;
                int i3 = i2 + 1;
                f23038c = i3;
                if (i3 <= 0) {
                    f23038c = 1;
                }
                intent.putExtra(f23036a, i2);
                ComponentName componentNameStartService = context.startService(intent);
                if (componentNameStartService == null) {
                    return null;
                }
                PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:" + componentNameStartService.flattenToShortString());
                wakeLockNewWakeLock.setReferenceCounted(false);
                wakeLockNewWakeLock.acquire(60000L);
                sparseArray.put(i2, wakeLockNewWakeLock);
                return componentNameStartService;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
