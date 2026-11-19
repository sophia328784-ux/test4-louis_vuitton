package com.networkbench.agent.impl.performance.coulometry.c.a;

import android.content.Context;
import com.networkbench.agent.impl.performance.coulometry.c.g;

/* JADX INFO: loaded from: classes2.dex */
public class a extends g {
    public a(Context context, com.networkbench.agent.impl.performance.coulometry.b.b bVar) {
        super(context, bVar);
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.c.f
    public com.networkbench.agent.impl.performance.coulometry.c.a a(com.networkbench.agent.impl.performance.coulometry.b.b bVar) {
        return new b(bVar);
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.c.f
    public void b() {
        com.networkbench.agent.impl.c.g.y("AlarmHook onInstall ");
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.c.g
    public String c() {
        return "android.app.IAlarmManager";
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.c.g
    public String d() {
        return "alarm";
    }
}
