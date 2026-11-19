package com.networkbench.agent.impl.harvest;

import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectInformation extends HarvestableObject {
    private ApplicationInformation applicationInformation;
    private String deviceId;
    private DeviceInformation deviceInformation;
    private final e log = f.a();
    public String userAgent;

    public ConnectInformation() {
        setApplicationInformation(NBSAgent.getApplicationInformation());
        setDeviceInformation(NBSAgent.getDeviceInformation());
        this.userAgent = initUserHeaderValue();
    }

    private String initUserHeaderValue() {
        return this.deviceInformation.initUserHeaderValue();
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        notNull(this.applicationInformation);
        jsonObject.add(Payload.TYPE_APP, this.applicationInformation.asJsonArray());
        notNull(this.deviceInformation);
        jsonObject.add("dev", this.deviceInformation.asJsonArray());
        this.deviceId = NBSAgent.getImpl().o();
        String str = this.deviceId;
        if (str == null) {
            str = "";
        }
        jsonObject.add("did", new JsonPrimitive(str));
        return jsonObject;
    }

    public JsonObject asSocketJsonObject() {
        JsonObject jsonObject = new JsonObject();
        this.deviceId = NBSAgent.getImpl().o();
        String str = this.deviceId;
        if (str == null) {
            str = "";
        }
        jsonObject.add("did", new JsonPrimitive(str));
        notNull(this.deviceInformation);
        jsonObject.add("dev", this.deviceInformation.asSocketJsonArray());
        notNull(this.applicationInformation);
        jsonObject.add(Payload.TYPE_APP, this.applicationInformation.asSocketJsonArray());
        return jsonObject;
    }

    public void setApplicationInformation(ApplicationInformation applicationInformation) {
        this.applicationInformation = applicationInformation;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setDeviceInformation(DeviceInformation deviceInformation) {
        this.deviceInformation = deviceInformation;
    }
}
