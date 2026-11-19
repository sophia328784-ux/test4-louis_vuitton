package com.networkbench.agent.impl.data.type;

import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.util.Logger;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class h extends com.networkbench.agent.impl.data.b.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final String f36970e = "AppStartDatas";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected AtomicBoolean f36971f = new AtomicBoolean(false);

    public h() {
        this.f36837b = "appStarts";
        this.f36838c = "starts";
        this.d = "appStart";
    }

    @Override // com.networkbench.agent.impl.data.b.a
    public void a(HarvestableArray harvestableArray) {
        super.a(harvestableArray);
        com.networkbench.agent.impl.util.c.c.a().a(new Runnable() { // from class: com.networkbench.agent.impl.data.type.h.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (Harvest.getInstance().getHarvester() != null) {
                        String info = h.this.formatInfo();
                        if (h.this.f36971f.compareAndSet(false, true)) {
                            Logger.debug("AppStartDatas", "upload app launch data immediately when add");
                            if (com.networkbench.agent.impl.util.r.u().aC()) {
                                NBSAppAgent.debugLog(h.this.asJsonObject().toString(), "TingyunSDK_appStart");
                            }
                            Harvest.getInstance().getHarvester().sendBatchDataNoCommonData(info);
                            h.this.reset();
                            h.this.f36971f.set(false);
                        }
                    }
                } catch (Throwable th) {
                    Logger.warning("AppStartDatas", "core params is not init success, skip to send launch data" + th.getMessage());
                    h.this.f36971f.set(false);
                }
            }
        });
    }

    @Override // com.networkbench.agent.impl.data.b.a, com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        if (this.f36971f.get()) {
            Logger.debug("AppStartDatas", "is sending, skip to send launch data");
            return "";
        }
        if (checkData()) {
            return "";
        }
        return this.d + asJsonObject().toString() + "\n";
    }
}
