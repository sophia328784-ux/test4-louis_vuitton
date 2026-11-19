package com.networkbench.agent.impl.plugin.f;

import com.networkbench.agent.impl.harvest.Harvest;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f38053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f38054b;

    public e(long j2, boolean z) {
        this.f38053a = j2;
        this.f38054b = z;
    }

    public boolean a(com.networkbench.agent.impl.plugin.h hVar) {
        int interval = (int) Harvest.getInstance().getConfiguration().getInterval();
        try {
            com.networkbench.agent.impl.c.g.e("taskId 包含...checkTime");
            if (hVar.f38125j instanceof com.networkbench.agent.impl.plugin.f) {
                com.networkbench.agent.impl.c.g.e("taskId 包含...checkTime1111111");
                int i2 = hVar.p;
                com.networkbench.agent.impl.c.g.e(i2 + "...........");
                interval = i2 <= 0 ? 60 : i2;
            }
            com.networkbench.agent.impl.c.g.e("taskId 包含...checkTime22222");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return System.currentTimeMillis() - this.f38053a < ((long) (interval * 1000));
    }
}
