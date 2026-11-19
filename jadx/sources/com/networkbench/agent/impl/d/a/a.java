package com.networkbench.agent.impl.d.a;

import android.text.TextUtils;
import com.linkplay.network.SecurityConstants;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.ActionData;
import com.networkbench.agent.impl.harvest.ActionDatas;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.harvest.NetworkPerfMetrics;
import com.networkbench.agent.impl.socket.n;
import com.networkbench.agent.impl.socket.r;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.s;
import com.networkbench.agent.impl.util.v;
import defpackage.z81;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36698a = f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f36699b;

    public a() {
        super(com.networkbench.agent.impl.d.f.Network);
        this.f36699b = false;
    }

    public ActionData a(com.networkbench.agent.impl.d.b.a aVar) {
        ActionData actionData = new ActionData();
        actionData.setSuuid(aVar.c().H());
        actionData.setUrl(aVar.f());
        actionData.setStatusCode(aVar.c().s());
        actionData.setErrorCode(aVar.c().t());
        actionData.setTotalTime(aVar.c().C());
        actionData.setCarrier("");
        actionData.setBytesReceived(aVar.c().x());
        actionData.setBytesSent(aVar.c().w());
        actionData.setConnectType(aVar.c().g());
        actionData.setAppData(aVar.c().y());
        actionData.setAppDataNew(aVar.c().z());
        actionData.setTimestamp(Long.valueOf(aVar.b()));
        actionData.setUrlParams(aVar.c().v());
        actionData.setRequestMethod(aVar.c().q());
        actionData.setHttpLibType(aVar.c().A());
        actionData.setTime_to_connect(aVar.c().m());
        actionData.setIP(aVar.c().l());
        actionData.setTime_to_dns(aVar.c().k());
        if (actionData.getUrl().toLowerCase().startsWith("https:")) {
            actionData.setTime_ssl_handshake(aVar.c().n());
        }
        actionData.setTime_first_package(aVar.c().o());
        actionData.setCdnVendorName(aVar.c().j());
        actionData.setAppPhase(aVar.c().p());
        actionData.setContentType(aVar.c().i());
        actionData.setTimeToQueueTime(aVar.c().c());
        actionData.setRemainPkTime(aVar.c().b());
        actionData.requestHeaderParam = aVar.c().f36393b;
        actionData.responseHeaderParam = aVar.c().f36394c;
        actionData.setDataTag(aVar.c().f());
        actionData.setOkhttp3(aVar.c().D());
        actionData.setOk2DnsFromThread(aVar.c().E());
        actionData.setAddressAllStr(aVar.c().F());
        actionData.setSeriesData(aVar.c().K());
        actionData.setUserActionId(aVar.c().h());
        g.o("requestHeaderParam : " + actionData.requestHeaderParam.size());
        g.o("responseHeaderParam : " + actionData.responseHeaderParam.size());
        if (!c(actionData)) {
            a(actionData);
        }
        if (!aVar.c().G()) {
            actionData.correctDataInfo();
        } else if (actionData.getTotalTime() <= 0) {
            actionData.setTotalTime(actionData.getAllTime());
        }
        actionData.setRequestBody(aVar.c().I());
        actionData.setResponseBody(aVar.c().J());
        actionData.setNetworkData(aVar.c().K());
        return actionData;
    }

    public void b(ActionData actionData) {
        actionData.setTime_to_connect(ai.d(actionData.getAddressAllStr()));
        n nVarE = r.a().e(actionData.getAddressAllStr());
        if (nVarE != null) {
            actionData.setTime_first_package(nVarE.a());
            actionData.setRemainPkTime(nVarE.b());
        }
        String strE = ai.e(actionData.getAddressAllStr());
        g.r("createActionFromHttpActionMeasurement  setInfoIfHttpClientLib : " + strE);
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        actionData.setIP(strE);
    }

    public boolean c(ActionData actionData) {
        return actionData.isWebViewData();
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestAdapter, com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestFilter() {
        ActionDatas actionDatas = Harvest.getInstance().getHarvestData().getActionDatas();
        if (actionDatas != null) {
            ArrayList arrayList = new ArrayList();
            for (ActionData actionData : actionDatas.getActionDatas()) {
                if (v.e(actionData.getUrl())) {
                    arrayList.add(actionData);
                }
                if (v.a(actionData.getStatusCode(), actionData.getUrl())) {
                    actionData.setStatusCode(200);
                    actionData.setErrorCode(0);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                actionDatas.remove((ActionData) it.next());
            }
        }
    }

    private void b(ActionData actionData, String str) {
        if (actionData.isOk2DnsFromThread()) {
            actionData.setTotalTime(actionData.getTotalTime() + r.c(str));
        }
        if (actionData.getTime_to_connect() <= 0) {
            actionData.setTime_to_connect(ai.a(str));
        }
        if (actionData.getTime_first_package() <= 0) {
            actionData.setTime_first_package(r.a().c(str));
        }
        if (actionData.getRemainPkTime() <= 0) {
            actionData.setRemainPkTime(r.a().d(str));
        }
    }

    @Override // com.networkbench.agent.impl.d.a.d, com.networkbench.agent.impl.d.a.c
    public void a(com.networkbench.agent.impl.d.a aVar) {
        com.networkbench.agent.impl.d.b.a aVar2 = (com.networkbench.agent.impl.d.b.a) aVar;
        ActionData actionDataA = a(aVar2);
        actionDataA.setErrorInfo(aVar2.d(), aVar2.e());
        try {
            if (com.networkbench.agent.impl.util.r.u().aC()) {
                NetworkPerfMetrics networkPerfMetrics = new NetworkPerfMetrics();
                networkPerfMetrics.getActionDatas().add(actionDataA);
                NBSAppAgent.debugLog(networkPerfMetrics.asJsonObject().toString(), "TingyunSDK_network");
            }
        } catch (Throwable th) {
            z81.k(new StringBuilder("addNetwork actionData debuglog has error :"), th);
        }
        if (Harvest.addHttpTransaction(actionDataA) == -1) {
            ai.a(aVar2);
        }
    }

    public void a(ActionData actionData) {
        if (actionData == null || actionData.getUrl() == null) {
            return;
        }
        if (actionData.isOkhttp3()) {
            a(actionData, s.a(actionData.getUrl()));
            return;
        }
        g.t("setOtherTimeInfo  not  okhttp3 !!! ");
        String strA = s.a(actionData.getUrl());
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        if (actionData.getUrl().startsWith(SecurityConstants.SECURITY_HTTPS)) {
            actionData.setTime_ssl_handshake(r.a(strA));
        } else {
            actionData.setTime_ssl_handshake(-1);
        }
        a(actionData, strA);
        if (actionData.getHttpLibType() == HttpLibType.OkHttp) {
            b(actionData, strA);
        } else {
            actionData.setTime_to_connect(ai.a(strA));
            actionData.setTime_first_package(r.a().c(strA));
            actionData.setRemainPkTime(r.a().d(strA));
        }
        if (actionData.getHttpLibType() == HttpLibType.HttpClient) {
            b(actionData);
        }
    }

    private void a(ActionData actionData, String str) {
        if (actionData.getStatusCode() != 901) {
            if (TextUtils.isEmpty(actionData.getIP())) {
                String strC = ai.c(str);
                if (!TextUtils.isEmpty(strC)) {
                    actionData.setIP(strC);
                }
                if (TextUtils.isEmpty(actionData.getIP()) && actionData.getHttpLibType() == HttpLibType.OkHttp) {
                    Map<String, String> map = r.f38219c;
                    actionData.setIP(map.get(str) != null ? map.get(str) : "");
                    return;
                }
                return;
            }
            return;
        }
        actionData.setIP("");
    }

    private String a(String str) {
        try {
            String[] strArrSplit = str.split(";");
            if (strArrSplit.length > 0) {
                String[] strArrSplit2 = strArrSplit[0].split("/");
                if (strArrSplit2.length > 0) {
                    return strArrSplit2[1];
                }
                return strArrSplit[0];
            }
        } catch (Throwable unused) {
        }
        return str;
    }

    public boolean a() {
        return this.f36699b;
    }

    public void a(boolean z) {
        this.f36699b = z;
    }
}
