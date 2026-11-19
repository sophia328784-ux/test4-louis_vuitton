package com.networkbench.agent.impl.data.c;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.n00;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f36846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f36847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f36848c;
    public JSONObject d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f36849e;
    private AtomicBoolean g = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f36850f = true;

    public boolean a(JSONObject jSONObject) {
        try {
            this.f36846a = jSONObject.optString("taskId");
            this.f36847b = jSONObject.optString("scene");
            this.f36848c = jSONObject.optString("action");
            this.d = jSONObject.optJSONObject("argument");
            try {
                this.f36849e = jSONObject.optString(ConfigurationName.KEY, null);
            } catch (Throwable unused) {
            }
            if (this.f36849e == null) {
                this.f36850f = false;
                this.f36849e = "";
                return true;
            }
            this.f36846a += ConfigurationName.KEY;
            return true;
        } catch (Throwable unused2) {
            return false;
        }
    }

    public boolean b() {
        return this.g.get();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NBSSceneAction{taskId='");
        sb.append(this.f36846a);
        sb.append("', scene='");
        sb.append(this.f36847b);
        sb.append("', action='");
        sb.append(this.f36848c);
        sb.append("', arguments=");
        sb.append(this.d);
        sb.append(", key='");
        return n00.r(this.f36849e, "'}", sb);
    }

    public void a(boolean z) {
        this.g.set(z);
    }

    public boolean a() {
        return this.f36850f;
    }
}
