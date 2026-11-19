package com.networkbench.agent.impl.harvest;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class SystemInfo extends HarvestableObject {
    private static e log = f.a();
    private int cpuUtilizationRateSystem;
    private int cpuUtilizationRateTotal;
    private int cpuUtilizationRateUser;
    private float memory;
    private double sessionDurationInSec;
    private long sessionRequestCount;

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("mem", new JsonPrimitive((Number) Float.valueOf(this.memory)));
        jsonObject.add("cpu_sys", new JsonPrimitive((Number) Integer.valueOf(this.cpuUtilizationRateSystem)));
        jsonObject.add("cpu_user", new JsonPrimitive((Number) Integer.valueOf(this.cpuUtilizationRateUser)));
        jsonObject.add("cpu", new JsonPrimitive((Number) Integer.valueOf(this.cpuUtilizationRateTotal)));
        if (r.o) {
            jsonObject.add("sd", new JsonPrimitive((Number) Double.valueOf((r.l - r.f38393k) / 1.0E9d)));
            this.sessionRequestCount = r.f38392j;
            jsonObject.add("req", new JsonPrimitive((Number) Long.valueOf(this.sessionRequestCount)));
            r.f38392j = 0;
        }
        return jsonObject;
    }

    public int getCpuUtilizationRateSystem() {
        return this.cpuUtilizationRateSystem;
    }

    public int getCpuUtilizationRateTotal() {
        return this.cpuUtilizationRateTotal;
    }

    public int getCpuUtilizationRateUser() {
        return this.cpuUtilizationRateUser;
    }

    public float getMemory() {
        return this.memory;
    }

    public double getSessionDurationInSec() {
        return this.sessionDurationInSec;
    }

    public long getSessionRequestCount() {
        return this.sessionRequestCount;
    }

    public void setCpuUtilizationRateSystem(int i2) {
        this.cpuUtilizationRateSystem = i2;
    }

    public void setCpuUtilizationRateTotal(int i2) {
        this.cpuUtilizationRateTotal = i2;
    }

    public void setCpuUtilizationRateUser(int i2) {
        this.cpuUtilizationRateUser = i2;
    }

    public void setMemory(float f2) {
        this.memory = f2;
    }

    public void setSessionDurationInSec(double d) {
        this.sessionDurationInSec = d;
    }

    public void setSessionRequestCount(long j2) {
        this.sessionRequestCount = j2;
    }
}
