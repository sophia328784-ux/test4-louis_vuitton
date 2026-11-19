package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public final class HardwareConfigState {
    public static final File d = new File("/proc/self/fd");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile HardwareConfigState f24788e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f24789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f24790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f24791c = true;

    public HardwareConfigState() {
        new AtomicBoolean(false);
        this.f24789a = 20000;
    }

    public static HardwareConfigState a() {
        if (f24788e == null) {
            synchronized (HardwareConfigState.class) {
                try {
                    if (f24788e == null) {
                        f24788e = new HardwareConfigState();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f24788e;
    }

    public final boolean b(int i2, int i3, boolean z, boolean z2) {
        boolean z3;
        if (!z) {
            Log.isLoggable("HardwareConfig", 2);
            return false;
        }
        if (z2) {
            Log.isLoggable("HardwareConfig", 2);
            return false;
        }
        if (i2 < 0 || i3 < 0) {
            Log.isLoggable("HardwareConfig", 2);
            return false;
        }
        synchronized (this) {
            try {
                int i4 = this.f24790b + 1;
                this.f24790b = i4;
                if (i4 >= 50) {
                    this.f24790b = 0;
                    boolean z4 = ((long) d.list().length) < ((long) this.f24789a);
                    this.f24791c = z4;
                    if (!z4) {
                        Log.isLoggable("Downsampler", 5);
                    }
                }
                z3 = this.f24791c;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z3) {
            return true;
        }
        Log.isLoggable("HardwareConfig", 2);
        return false;
    }
}
