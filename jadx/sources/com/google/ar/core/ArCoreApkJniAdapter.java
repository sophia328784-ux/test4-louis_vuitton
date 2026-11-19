package com.google.ar.core;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.ar.core.exceptions.ResourceExhaustedException;
import com.google.ar.core.exceptions.UnavailableApkTooOldException;
import com.google.ar.core.exceptions.UnavailableArcoreNotInstalledException;
import com.google.ar.core.exceptions.UnavailableDeviceNotCompatibleException;
import com.google.ar.core.exceptions.UnavailableSdkTooOldException;
import com.google.ar.core.exceptions.UnavailableUserDeclinedInstallationException;
import java.util.HashMap;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
final class ArCoreApkJniAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f33342a;

    static {
        HashMap map = new HashMap();
        f33342a = map;
        map.put(IllegalArgumentException.class, Integer.valueOf(ai.f33378b.G));
        map.put(ResourceExhaustedException.class, Integer.valueOf(ai.n.G));
        map.put(UnavailableArcoreNotInstalledException.class, Integer.valueOf(ai.B.G));
        map.put(UnavailableDeviceNotCompatibleException.class, Integer.valueOf(ai.C.G));
        map.put(UnavailableApkTooOldException.class, Integer.valueOf(ai.D.G));
        map.put(UnavailableSdkTooOldException.class, Integer.valueOf(ai.E.G));
        map.put(UnavailableUserDeclinedInstallationException.class, Integer.valueOf(ai.F.G));
    }

    public static int b(Throwable th) {
        Class<?> cls = th.getClass();
        HashMap map = f33342a;
        return map.containsKey(cls) ? ((Integer) map.get(cls)).intValue() : ai.f33379c.G;
    }

    public static int checkAvailability(Context context) {
        try {
            return ArCoreApk.getInstance().checkAvailability(context).nativeCode;
        } catch (Throwable th) {
            b(th);
            return ArCoreApk.Availability.UNKNOWN_ERROR.nativeCode;
        }
    }

    public static void checkAvailabilityAsync(Context context, final long j2, final long j3) {
        final Consumer<ArCoreApk.Availability> consumer = new Consumer() { // from class: com.google.ar.core.n
            @Override // java.util.function.Consumer
            public final /* synthetic */ void accept(Object obj) {
                ArCoreApkJniAdapter.nativeInvokeAvailabilityCallback(j2, j3, ((ArCoreApk.Availability) obj).nativeCode);
            }
        };
        try {
            ArCoreApk.getInstance().checkAvailabilityAsync(context, consumer);
        } catch (Throwable th) {
            b(th);
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.ar.core.m
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    HashMap map = ArCoreApkJniAdapter.f33342a;
                    consumer.accept(ArCoreApk.Availability.UNKNOWN_ERROR);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeInvokeAvailabilityCallback(long j2, long j3, int i2);

    public static int requestInstall(Activity activity, boolean z, int[] iArr) throws UnavailableUserDeclinedInstallationException, UnavailableDeviceNotCompatibleException {
        try {
            iArr[0] = ArCoreApk.getInstance().requestInstall(activity, z).nativeCode;
            return ai.f33377a.G;
        } catch (Throwable th) {
            return b(th);
        }
    }

    public static int requestInstallCustom(Activity activity, boolean z, int i2, int i3, int[] iArr) throws UnavailableUserDeclinedInstallationException, UnavailableDeviceNotCompatibleException {
        try {
            iArr[0] = ArCoreApk.getInstance().requestInstall(activity, z, ArCoreApk.InstallBehavior.forNumber(i2), ArCoreApk.UserMessageType.forNumber(i3)).nativeCode;
            return ai.f33377a.G;
        } catch (Throwable th) {
            return b(th);
        }
    }
}
