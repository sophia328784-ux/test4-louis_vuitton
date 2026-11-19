package com.networkbench.agent.impl.harvest;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.b.k;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.data.c.c;
import com.networkbench.agent.impl.data.d.i;
import com.networkbench.agent.impl.data.g;
import com.networkbench.agent.impl.data.type.h;
import com.networkbench.agent.impl.harvest.a.a.a;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.session.SpanDatas;
import com.networkbench.agent.impl.socket.q;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.webview.b.b;
import com.networkbench.com.google.gson.JsonArray;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class HarvestData extends HarvestableArray {
    private a batchDataCommonData;
    private double harvestTimeDelta;
    private static final e log = f.a();
    private static h appStartDatas = new h();
    private static i pageDatas = new i();
    public static i successPageDatas = new i();
    private static c pluginData = new c();
    public static CopyOnWriteArrayList<String> customEvents = new CopyOnWriteArrayList<>();
    private static SpanDatas spanDatas = new SpanDatas();
    public Vector<k> blockInfos = new Vector<>();
    private NetworkPerfMetrics networkPerfMetrics = new NetworkPerfMetrics();
    private com.networkbench.agent.impl.webview.b.f webviewPerfMetricsV2 = new com.networkbench.agent.impl.webview.b.f();
    private com.networkbench.agent.impl.data.a.i nbsEventActions = new com.networkbench.agent.impl.data.a.i();

    public HarvestData() {
        a aVar = new a();
        this.batchDataCommonData = aVar;
        aVar.a(r.u(), NBSAgent.getDeviceInformation());
    }

    public static h getAppStartDatas() {
        return appStartDatas;
    }

    public static String getCustomEvents() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = customEvents.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        return sb.toString();
    }

    public static c getPluginData() {
        return pluginData;
    }

    public static SpanDatas getSpanDatas() {
        return spanDatas;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        return new JsonArray();
    }

    public ActionDatas getActionDatas() {
        return this.networkPerfMetrics.getActionDatas();
    }

    public a getBatchDataCommonData() {
        this.batchDataCommonData.a(r.u(), NBSAgent.getDeviceInformation());
        return this.batchDataCommonData;
    }

    public g getHttpErrors() {
        return this.networkPerfMetrics.getErrorDatas();
    }

    public b getJsErrors() {
        return this.webviewPerfMetricsV2.c();
    }

    public com.networkbench.agent.impl.data.a.i getNbsEventActions() {
        return this.nbsEventActions;
    }

    public NetworkPerfMetrics getNetworkPerfMetrics() {
        return this.networkPerfMetrics;
    }

    public i getPageDatas() {
        return pageDatas;
    }

    public q getSocketDatas() {
        return this.networkPerfMetrics.getSocketdatas();
    }

    public com.networkbench.agent.impl.webview.b.f getWebViewPerfMetrics() {
        return this.webviewPerfMetricsV2;
    }

    public b getWebViewTransactions() {
        return this.webviewPerfMetricsV2.b();
    }

    public void reset() {
        this.networkPerfMetrics.reset();
        this.webviewPerfMetricsV2.a();
    }

    public void setPageDatas(i iVar) {
        pageDatas = iVar;
    }

    public void setPluginData(c cVar) {
        pluginData = cVar;
    }
}
