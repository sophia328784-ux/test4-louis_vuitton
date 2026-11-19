package com.networkbench.agent.impl.floatbtnmanager.a;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class d extends i {
    public d(Activity activity) {
        super(activity);
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.a.i
    public boolean a() {
        return a(24);
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.a.i
    public Intent b() {
        Intent intent = new Intent();
        try {
            intent.setFlags(268435456);
            intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.systemmanager.addviewmonitor.AddViewMonitorActivity"));
            if (h.f() == 3.1d) {
                return intent;
            }
            intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.notificationmanager.ui.NotificationManagmentActivity"));
            return intent;
        } catch (ActivityNotFoundException unused) {
            intent.setFlags(268435456);
            intent.setComponent(new ComponentName("com.Android.settings", "com.android.settings.permission.TabItem"));
            return intent;
        } catch (SecurityException unused2) {
            intent.setFlags(268435456);
            intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.MainActivity"));
            return intent;
        } catch (Exception e2) {
            i.f37071b.a("error:" + e2.getMessage());
            return null;
        }
    }
}
