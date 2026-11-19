package com.networkbench.agent.impl.floatbtnmanager.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;

/* JADX INFO: loaded from: classes2.dex */
public class a extends i {
    public a(Activity activity) {
        super(activity);
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.a.i
    public boolean a() {
        try {
            return ((Boolean) Settings.class.getDeclaredMethod("canDrawOverlays", Context.class).invoke(null, this.f37072a)).booleanValue();
        } catch (Throwable th) {
            i.f37071b.a("error:" + th.getMessage());
            return true;
        }
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.a.i
    public Intent b() {
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
        intent.setFlags(268435456);
        intent.setData(Uri.parse("package:" + this.f37072a.getPackageName()));
        return intent;
    }
}
