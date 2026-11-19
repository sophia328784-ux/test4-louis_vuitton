package com.networkbench.agent.impl.webview;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.ActionData;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.instrumentation.NBSTransactionStateUtil;
import com.networkbench.agent.impl.util.r;
import java.io.InputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class h extends l implements l.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f38504f;
    private Map<String, String> g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f38505h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private InputStream f38506i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f38507j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f38508k;
    private String l;
    private Map<String, String> m;
    private int n;

    public h(String str) {
        super(str);
    }

    @Override // com.networkbench.agent.impl.webview.l
    public ActionData a() {
        ActionData actionData = new ActionData(true);
        actionData.setRequestMethod(NBSTransactionStateUtil.setRequestMethod(this.f38504f));
        actionData.setStatusCode(this.n);
        actionData.setErrorCode(this.n);
        if (this.m != null && NBSAgent.getImpl() != null && NBSAgent.getImpl().m() != null && Harvest.isCdn_enabled()) {
            r.A.a("begin to get cdn header name");
            String cdnHeaderName = NBSAgent.getImpl().m().getCdnHeaderName();
            if (cdnHeaderName != null) {
                for (String str : this.m.keySet()) {
                    if (cdnHeaderName.equalsIgnoreCase(str)) {
                        actionData.setCdnVendorName(this.m.get(str) == null ? "" : this.m.get(str));
                    }
                }
            }
        }
        a(this);
        return actionData;
    }

    public void b(String str) {
        this.f38507j = str;
    }

    public void c(String str) {
        this.f38508k = str;
    }

    public void d(String str) {
        this.l = str;
    }

    public void b(Map<String, String> map) {
        this.m = map;
    }

    @Override // com.networkbench.agent.impl.webview.l.a
    public Map<String, String> b() {
        return this.m;
    }

    public void a(Map<String, String> map) {
        this.g = map;
    }

    public void a(boolean z) {
        this.f38505h = z;
    }

    public void a(InputStream inputStream) {
        this.f38506i = inputStream;
    }

    public void a(int i2) {
        this.n = i2;
    }

    public void a(String str) {
        this.f38504f = str;
    }
}
