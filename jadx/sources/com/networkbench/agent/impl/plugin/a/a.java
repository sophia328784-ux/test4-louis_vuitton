package com.networkbench.agent.impl.plugin.a;

import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class a extends HarvestableObject {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f37920b;
    int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f37922e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f37923f;
    int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f37924h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f37925i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f37926j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f37919a = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f37921c = "";

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        try {
            int iIntValue = Integer.valueOf(this.f37921c).intValue();
            int i2 = this.d;
            int i3 = this.f37922e;
            if (iIntValue != i2 + i3) {
                this.f37921c = String.valueOf(i2 + i3);
            }
        } catch (Throwable unused) {
            this.f37921c = String.valueOf(this.d + this.f37922e);
        }
        jsonObject.add("rg", new JsonPrimitive(Boolean.valueOf(this.f37919a)));
        jsonObject.add("nt", new JsonPrimitive((Number) Integer.valueOf(this.f37920b)));
        String str = this.f37921c;
        if (str == null) {
            str = "";
        }
        jsonObject.add("no", new JsonPrimitive(str));
        jsonObject.add("mcc", new JsonPrimitive((Number) Integer.valueOf(this.d)));
        jsonObject.add("mnc", new JsonPrimitive((Number) Integer.valueOf(this.f37922e)));
        jsonObject.add("cid", new JsonPrimitive((Number) Integer.valueOf(this.f37923f)));
        jsonObject.add("pci", new JsonPrimitive((Number) Integer.valueOf(this.g)));
        jsonObject.add("earfcn", new JsonPrimitive((Number) Integer.valueOf(this.f37924h)));
        jsonObject.add("rsrp", new JsonPrimitive((Number) Integer.valueOf(this.f37925i)));
        jsonObject.add("rsrq", new JsonPrimitive((Number) Integer.valueOf(this.f37926j)));
        return jsonObject;
    }
}
