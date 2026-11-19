package com.networkbench.agent.impl.k;

import com.networkbench.agent.impl.c.g;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f37418a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f37419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f37420c;

    public void a(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            this.f37418a = false;
            this.f37419b = false;
            this.f37420c = false;
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                String string = jSONArray.getString(i2);
                if ("tingyun".equals(string)) {
                    this.f37418a = true;
                } else if ("w3c-trace-context".equals(string)) {
                    this.f37419b = true;
                } else if ("sw8".equals(string)) {
                    this.f37420c = true;
                }
            }
            g.A("setSeriesConfigOfString : " + str);
        } catch (JSONException e2) {
            g.A("setSeriesConfigOfString error : " + e2.getMessage());
        }
    }

    public boolean b() {
        return this.f37419b;
    }

    public boolean c() {
        return this.f37420c;
    }

    public void a(int i2) {
        this.f37418a = (i2 & 1) != 0;
        this.f37419b = (i2 & 2) != 0;
        this.f37420c = (i2 & 4) != 0;
    }

    public boolean a() {
        return this.f37418a;
    }
}
