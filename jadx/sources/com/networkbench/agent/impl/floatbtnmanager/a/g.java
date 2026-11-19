package com.networkbench.agent.impl.floatbtnmanager.a;

import android.app.Activity;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class g extends i {
    public g(Activity activity) {
        super(activity);
    }

    private boolean a(Intent intent) {
        return intent != null && this.f37072a.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.a.i
    public Intent b() {
        Intent intent = new Intent();
        intent.setClassName("com.android.settings", "com.android.settings.Settings$OverlaySettingsActivity");
        intent.setFlags(268435456);
        if (!a(intent)) {
            intent.setClassName("com.qihoo360.mobilesafe", "com.qihoo360.mobilesafe.ui.index.AppEnterActivity");
            if (!a(intent)) {
                return null;
            }
        }
        return intent;
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.a.i
    public boolean a() {
        return a(24);
    }
}
