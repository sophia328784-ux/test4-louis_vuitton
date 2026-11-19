package com.networkbench.agent.impl.data.a;

import android.view.View;
import com.networkbench.R;
import com.networkbench.agent.impl.floatbtnmanager.q;
import com.networkbench.agent.impl.instrumentation.NBSActionInstrumentation;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class a implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36757a = "ActionFeatures";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f36758b = 7620435178023L;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f36759c = "-1";
    private String d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f36760e = f36759c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f36761f = f36759c;
    private String g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f36762h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f36763i = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f36764j = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f36765k = "";

    public a(View view) {
        a(view);
    }

    public String a(boolean z, boolean z2) {
        JsonObject jsonObject = new JsonObject();
        if (z && !ab.c(this.d)) {
            jsonObject.add("text", new JsonPrimitive(ab.a(this.d, 128)));
        }
        if (z2 && k()) {
            jsonObject.add("position", new JsonPrimitive(this.f36761f));
        }
        jsonObject.add("path", new JsonPrimitive(this.g));
        jsonObject.add("sn", new JsonPrimitive(this.f36762h));
        if (!ab.c(this.f36763i)) {
            jsonObject.add(com.batch.android.s.b.a.f24015b, new JsonPrimitive(this.f36763i));
        }
        if (!ab.c(this.f36764j)) {
            jsonObject.add("name", new JsonPrimitive(this.f36764j));
        }
        if (!ab.c(this.f36765k)) {
            jsonObject.add("pn", new JsonPrimitive(this.f36765k));
        }
        return jsonObject.toString();
    }

    public String b() {
        return this.f36761f;
    }

    public String c() {
        return this.g;
    }

    public String d() {
        return this.f36764j;
    }

    public String e() {
        return this.f36765k;
    }

    public String f() {
        return this.f36763i;
    }

    public String g() {
        return this.f36762h;
    }

    public String h() {
        return a(true, true);
    }

    public String i() {
        String str = this.d;
        return str == null ? "" : str;
    }

    public String j() {
        return this.f36761f;
    }

    public boolean k() {
        return (ab.c(this.f36761f) || this.f36761f.equals(f36759c)) ? false : true;
    }

    private void a(View view) {
        if (view != null) {
            this.d = ak.d(view);
            this.f36761f = q.d(view);
            if (NBSActionInstrumentation.getColumn(view) != null) {
                this.f36760e = NBSActionInstrumentation.getColumn(view);
            }
            if (view.getTag(R.string.view_attached_content) != null) {
                this.f36764j = view.getTag(R.string.view_attached_content).toString();
            }
            if (view.getTag(R.string.view_attached_id) != null) {
                this.f36763i = view.getTag(R.string.view_attached_id).toString();
            }
            this.g = ak.b(view);
            String strC = ak.c(view);
            this.f36762h = strC;
            this.f36765k = b.f36766a.b(strC);
        }
    }

    public String a() {
        return this.f36760e;
    }
}
