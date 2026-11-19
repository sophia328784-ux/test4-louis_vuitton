package com.networkbench.agent.impl.m;

import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.Harvester;
import com.networkbench.agent.impl.n.f;
import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public class c extends Thread {
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        f fVarA;
        try {
            Harvester harvester = Harvest.getInstance().getHarvester();
            if (harvester != null && !harvester.getIsSendState().get()) {
                try {
                    g.v("NBSDataRunnble run...");
                    harvester.getIsSendState().set(true);
                    harvester.saveHttpData();
                    harvester.saveReplayData();
                } catch (Throwable unused) {
                }
                harvester.getIsSendState().set(false);
            }
            if (f.a().f37544c.get()) {
                return;
            }
            try {
                f.a().f37544c.set(true);
                f.a().h();
                fVarA = f.a();
            } catch (Throwable unused2) {
                fVarA = f.a();
            }
            fVarA.f37544c.set(false);
        } catch (Throwable th) {
            z81.k(new StringBuilder("NBSDataRunnble run has an error : "), th);
        }
    }
}
