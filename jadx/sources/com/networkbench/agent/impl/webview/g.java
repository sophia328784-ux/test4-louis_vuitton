package com.networkbench.agent.impl.webview;

import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.ActionData;
import com.networkbench.agent.impl.harvest.RequestMethodType;
import com.networkbench.agent.impl.instrumentation.NBSTransactionStateUtil;
import com.networkbench.agent.impl.util.r;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class g extends l {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f38500f;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f38501h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map<String, String> f38502i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f38503j;

    public g(String str) {
        super(str);
    }

    @Override // com.networkbench.agent.impl.webview.l
    public ActionData a() {
        ActionData actionData = new ActionData(true);
        actionData.setDataTag(r.u().e());
        actionData.setStatusCode(this.f38500f);
        actionData.setErrorCode(this.f38500f);
        actionData.setRequestMethod(RequestMethodType.GET);
        if (!TextUtils.isEmpty(this.f38501h)) {
            actionData.setRequestMethod(NBSTransactionStateUtil.setRequestMethod(this.f38501h));
        }
        return actionData;
    }

    public void b(String str) {
        this.f38501h = str;
    }

    public void a(int i2) {
        this.f38500f = i2;
    }

    public void a(Map<String, String> map) {
        this.f38502i = map;
    }

    public void a(String str) {
        this.g = str;
    }
}
