package com.networkbench.agent.impl.harvest;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.data.g;
import com.networkbench.agent.impl.data.h;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.plugin.a.a;
import com.networkbench.agent.impl.session.SpanFormat;
import com.networkbench.agent.impl.socket.q;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkPerfMetrics extends HarvestableObject implements SpanFormat {
    private a cellInfoCollect;
    private ActionDatas actionDatas = new ActionDatas();
    private g errorDatas = new g();
    private q socketdatas = new q();
    private h hijackData = new h();

    private boolean isSingleCellInfoShouldCollect() {
        try {
            List<String> cellInfoConfig = HarvestConfiguration.getCellInfoConfig();
            return cellInfoConfig != null && cellInfoConfig.size() > 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        a aVar;
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("type", new JsonPrimitive("networkPerfMetrics"));
        jsonObject.add("bg", new JsonPrimitive((Number) Integer.valueOf(r.p)));
        jsonObject.add("interval", new JsonPrimitive((Number) Long.valueOf(r.u().r())));
        jsonObject.add("dev", NBSAgent.getDeviceData().asJson());
        try {
            jsonObject.add("actions", this.actionDatas.asJson());
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.d("NetworkPerfMetrics asJsonObject error", th);
        }
        jsonObject.add("sockets", this.socketdatas.asJson());
        jsonObject.add("metrics", NBSAgent.getSystemInfo().asJson());
        jsonObject.add("errs", new JsonArray());
        jsonObject.add("hijack", this.hijackData.asJson());
        if (isSingleCellInfoShouldCollect() && (aVar = this.cellInfoCollect) != null) {
            jsonObject.add("cellInfo", aVar.asJson());
        }
        return jsonObject;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return this.actionDatas.getActionDatas().size() == 0 && this.errorDatas.c() == 0;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        if (checkData()) {
            return "";
        }
        return "network" + asJsonObject().toString() + "\n";
    }

    public String formatInfoNoCheck() {
        return "network" + asJsonObject().toString() + "\n";
    }

    public ActionDatas getActionDatas() {
        return this.actionDatas;
    }

    public int getCellInfoCollect() {
        return this.cellInfoCollect != null ? 1 : 0;
    }

    public int getDataCount() {
        return this.socketdatas.c() + this.errorDatas.c() + this.actionDatas.count();
    }

    public g getErrorDatas() {
        return this.errorDatas;
    }

    public h getHijackData() {
        return this.hijackData;
    }

    public q getSocketdatas() {
        return this.socketdatas;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
        this.errorDatas.a();
        this.actionDatas.clear();
        this.socketdatas.a();
        this.hijackData.a();
    }

    public void setCellInfoCollect(a aVar) {
        this.cellInfoCollect = aVar;
    }
}
