package com.networkbench.agent.impl.data;

import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class i extends HarvestableArray {
    private static final int d = 1024;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f36906a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36907b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f36908c = 0;

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.length() > 1024) {
            this.f36906a = str.substring(0, 1024);
        } else {
            this.f36906a = str;
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive(this.f36906a));
        jsonArray.add(new JsonPrimitive(this.f36907b));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36908c)));
        return jsonArray;
    }

    public void b(String str) {
        this.f36907b = str;
    }

    public int c() {
        return this.f36908c;
    }

    public String b() {
        return this.f36907b;
    }

    public String a() {
        return this.f36906a;
    }

    public void a(int i2) {
        this.f36908c = i2;
    }
}
