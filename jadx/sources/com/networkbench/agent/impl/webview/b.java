package com.networkbench.agent.impl.webview;

import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.RequestMethodType;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f38436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f38437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected RequestMethodType f38438c;
    private String d;

    public void a(RequestMethodType requestMethodType) {
        this.f38438c = requestMethodType;
    }

    public String b(String str) {
        if (str == null) {
            return null;
        }
        String strB = ak.b(str);
        this.f38436a = strB;
        return strB;
    }

    public void c(String str) {
        this.d = str;
    }

    public void d(String str) {
        this.f38437b = str;
    }

    public JsonPrimitive e(String str) {
        return (TextUtils.isEmpty(str) || str.equalsIgnoreCase("null")) ? new JsonPrimitive("") : new JsonPrimitive(str);
    }

    public String i() {
        return this.d;
    }

    public String j() {
        return this.f38437b;
    }

    public RequestMethodType k() {
        return this.f38438c;
    }

    public String l() {
        return this.f38436a;
    }
}
