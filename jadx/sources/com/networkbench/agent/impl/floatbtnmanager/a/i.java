package com.networkbench.agent.impl.floatbtnmanager.a;

import android.app.Activity;
import android.app.AppOpsManager;
import android.content.Intent;
import android.os.Binder;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final com.networkbench.agent.impl.c.e f37071b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Activity f37072a;

    public i(Activity activity) {
        this.f37072a = activity;
    }

    public abstract boolean a();

    public boolean a(int i2) {
        AppOpsManager appOpsManager = (AppOpsManager) this.f37072a.getSystemService("appops");
        try {
            Class cls = Integer.TYPE;
            return ((Integer) AppOpsManager.class.getDeclaredMethod("checkOp", cls, cls, String.class).invoke(appOpsManager, Integer.valueOf(i2), Integer.valueOf(Binder.getCallingUid()), this.f37072a.getPackageName())).intValue() == 0;
        } catch (Exception e2) {
            f37071b.a("error ignore:" + e2.getMessage());
            return false;
        }
    }

    public abstract Intent b();
}
