package com.networkbench.agent.impl.f;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public interface d {
    String getModuleData();

    String getModuleName();

    void harvestRestart();

    void harvestStop();

    void initModule(Context context, com.networkbench.agent.impl.c.e eVar, com.networkbench.agent.impl.harvest.a.a.c cVar, int i2);
}
