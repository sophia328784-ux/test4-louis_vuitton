package com.networkbench.agent.impl.webview;

import com.networkbench.agent.impl.harvest.ActionData;

/* JADX INFO: loaded from: classes2.dex */
public class i extends l {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f38509f;

    public i(String str) {
        super(str);
    }

    @Override // com.networkbench.agent.impl.webview.l
    public ActionData a() {
        ActionData actionData = new ActionData(true);
        actionData.setStatusCode(908);
        actionData.setErrorCode(908);
        return actionData;
    }

    public void a(int i2) {
        this.f38509f = i2;
    }
}
