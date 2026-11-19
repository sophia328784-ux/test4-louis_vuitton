package com.google.android.gms.internal.measurement;

import android.app.ActivityManager;
import com.google.common.base.Supplier;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzqh implements Supplier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ zzqh f30831b = new zzqh();

    @Override // com.google.common.base.Supplier
    public final /* synthetic */ Object get() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        boolean z = false;
        try {
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            new StringBuilder(String.valueOf(runningAppProcessInfo.importance).length() + 17);
            if (runningAppProcessInfo.importance >= 400) {
                z = true;
            }
        } catch (RuntimeException unused) {
        }
        return new Boolean(z);
    }
}
