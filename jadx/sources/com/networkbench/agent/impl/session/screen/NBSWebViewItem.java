package com.networkbench.agent.impl.session.screen;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class NBSWebViewItem extends HarvestableObject {
    private int webviewHeight;
    private String webviewId;
    private int webviewLeft;
    private int webviewTop;
    private int webviewWidth;

    public NBSWebViewItem(String str, int i2, int i3, int i4, int i5) {
        this.webviewId = str;
        this.webviewWidth = i2;
        this.webviewHeight = i3;
        this.webviewLeft = i4;
        this.webviewTop = i5;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        String str = this.webviewId;
        if (str == null) {
            str = "";
        }
        jsonObject.add(b.a.f24015b, new JsonPrimitive(str));
        jsonObject.add("width", new JsonPrimitive((Number) Integer.valueOf(this.webviewWidth)));
        jsonObject.add("height", new JsonPrimitive((Number) Integer.valueOf(this.webviewHeight)));
        jsonObject.add("left", new JsonPrimitive((Number) Integer.valueOf(this.webviewLeft)));
        jsonObject.add("top", new JsonPrimitive((Number) Integer.valueOf(this.webviewTop)));
        return jsonObject;
    }
}
