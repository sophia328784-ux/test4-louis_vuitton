package com.networkbench.agent.impl.crash;

import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestSoc;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonObject;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36587b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JsonObject f36588a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private h f36589c;
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f36590e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f36591f;

    public a(JsonObject jsonObject, h hVar, String str, int i2, String str2) {
        if (jsonObject == null || hVar == null) {
            md.n("error in param in error runnable");
            throw null;
        }
        this.f36588a = jsonObject;
        this.f36589c = hVar;
        this.d = str;
        this.f36590e = i2;
        this.f36591f = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            com.networkbench.agent.impl.harvest.d.c cVarSendDataInfo = HarvestSoc.sendDataInfo(this.f36588a.toString(), this.f36590e, r.u().K(), "token=");
            if (cVarSendDataInfo != null) {
                com.networkbench.agent.impl.c.e eVar = f36587b;
                eVar.a("crash report status code:" + cVarSendDataInfo.i());
                if (cVarSendDataInfo.i() < 400) {
                    try {
                        eVar.a("start to delete store crash");
                        this.f36589c.b(this.d);
                        eVar.a("report crash success ,crash has been delete");
                        if (this.f36590e == 5 && !TextUtils.isEmpty(this.f36591f)) {
                            Harvest.getInstance().getHarvester().sendForgeUserActionItemPb(this.f36591f);
                        }
                    } catch (Throwable th) {
                        f36587b.a("delete Crash occor an Exception,delete all store Crash", th);
                        this.f36589c.d();
                    }
                }
            }
        } catch (Throwable th2) {
            f36587b.a("crash report thread occur Exception", th2);
        }
    }
}
