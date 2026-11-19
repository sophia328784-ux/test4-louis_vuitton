package com.networkbench.agent.impl.floatbtnmanager.a;

import android.app.Activity;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class e extends i {
    public e(Activity activity) {
        super(activity);
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.a.i
    public boolean a() {
        return a(24);
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.a.i
    public Intent b() {
        Intent intent = new Intent("com.meizu.safe.security.SHOW_APPSEC");
        intent.setClassName("com.meizu.safe", "com.meizu.safe.security.AppSecActivity");
        intent.putExtra("packageName", this.f37072a.getPackageName());
        intent.setFlags(268435456);
        return intent;
    }
}
