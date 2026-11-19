package com.networkbench.agent.impl.harvest;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.crash.b;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;
import defpackage.n00;
import java.text.MessageFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceInformation extends HarvestableArray {
    private String agentName;
    private String agentVersion;
    private String brsAgentMd5;
    private String countryCode;
    private String cpuArch;
    private String cpuModel;
    private String deviceId;
    private String manufacturer;
    private Map<String, Object> misc = new HashMap();
    private String model;
    private String osName;
    private String osVersion;
    private String regionCode;
    private double screenSize;

    public void addMisc(String str, Object obj) {
        this.misc.put(str, obj);
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive(this.screenSize + ""));
        jsonArray.add(new JsonPrimitive(this.manufacturer));
        jsonArray.add(new JsonPrimitive(this.model));
        jsonArray.add(new JsonPrimitive(this.osName));
        jsonArray.add(new JsonPrimitive(this.osVersion));
        jsonArray.add(new JsonPrimitive(this.agentName));
        jsonArray.add(new JsonPrimitive(this.agentVersion));
        Map<String, Object> map = this.misc;
        if (map == null || map.isEmpty()) {
            this.misc = Collections.EMPTY_MAP;
        }
        jsonArray.add(new Gson().toJsonTree(this.misc, this.GSON_STRING_MAP_TYPE));
        DeviceData.userId = r.u().t();
        return jsonArray;
    }

    public JsonArray asSocketJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive(this.screenSize + ""));
        jsonArray.add(new JsonPrimitive(this.manufacturer));
        jsonArray.add(new JsonPrimitive(this.model));
        jsonArray.add(new JsonPrimitive(this.osName));
        jsonArray.add(new JsonPrimitive(this.osVersion));
        Map<String, Object> map = this.misc;
        if (map == null || map.isEmpty()) {
            this.misc = Collections.EMPTY_MAP;
        }
        jsonArray.add(new Gson().toJsonTree(this.misc, this.GSON_STRING_MAP_TYPE));
        DeviceData.userId = r.u().t();
        return jsonArray;
    }

    public String getAgentName() {
        return this.agentName;
    }

    public String getAgentVersion() {
        return this.agentVersion;
    }

    public String getBrsAgentMd5() {
        return this.brsAgentMd5;
    }

    public String getCountryCode() {
        return this.countryCode;
    }

    public String getCpuArch() {
        if (ak.r(this.cpuArch)) {
            this.cpuArch = b.a();
        }
        return this.cpuArch;
    }

    public String getCpuModel() {
        if (ak.r(this.cpuModel)) {
            this.cpuModel = b.d();
        }
        return this.cpuModel;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public String getModel() {
        return this.model;
    }

    public String getOsName() {
        return this.osName;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public String getRegionCode() {
        return this.regionCode;
    }

    public double getScreenSize() {
        return this.screenSize;
    }

    public String initUserHeaderValue() {
        return MessageFormat.format("NBS Newlens Agent/{0} ({1} {2})", NBSAgent.getVersion(), this.osName, this.osVersion);
    }

    public void setAgentName(String str) {
        this.agentName = str;
    }

    public void setAgentVersion(String str) {
        this.agentVersion = str;
    }

    public void setBrsAgentMd5(String str) {
        this.brsAgentMd5 = str;
    }

    public void setCountryCode(String str) {
        this.countryCode = str;
    }

    public void setCpuArch(String str) {
        this.cpuArch = str;
    }

    public void setCpuType(String str) {
        this.cpuModel = str;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setManufacturer(String str) {
        this.manufacturer = str;
    }

    public void setMisc(Map<String, Object> map) {
        this.misc = new HashMap(map);
    }

    public void setModel(String str) {
        this.model = str;
    }

    public void setOsName(String str) {
        this.osName = str;
    }

    public void setOsVersion(String str) {
        this.osVersion = str;
    }

    public void setRegionCode(String str) {
        this.regionCode = str;
    }

    public void setScreenSize(double d) {
        this.screenSize = d;
    }

    @Override // com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public String toJsonString() {
        StringBuilder sb = new StringBuilder("DeviceInformation{manufacturer='");
        sb.append(this.manufacturer);
        sb.append("', osName='");
        sb.append(this.osName);
        sb.append("', osVersion='");
        sb.append(this.osVersion);
        sb.append("', model='");
        sb.append(this.model);
        sb.append("', agentName='");
        sb.append(this.agentName);
        sb.append("', agentVersion='");
        sb.append(this.agentVersion);
        sb.append("', deviceId='");
        sb.append(this.deviceId);
        sb.append("', countryCode='");
        sb.append(this.countryCode);
        sb.append("', regionCode='");
        return n00.r(this.regionCode, "'}", sb);
    }
}
